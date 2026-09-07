import 'dart:ui';
import 'dart:async';

import 'package:aspends_tracker/core/models/transaction.dart';
import 'package:aspends_tracker/widgets/request_money_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showcaseview/showcaseview.dart';

import '../core/view_models/theme_view_model.dart';
import '../core/view_models/transaction_view_model.dart';
import '../core/view_models/liquid_navbar_view_model.dart';
import '../core/services/native_bridge.dart';
import '../core/services/tour_service.dart';
import '../core/const/tour_style.dart';
import 'package:permission_handler/permission_handler.dart';
import '../core/services/transaction_detection_service.dart';
import 'package:aspends_tracker/l10n/generated/app_localizations.dart';
import '../core/const/app_constants.dart';
import '../core/const/app_colors.dart';
import '../../core/const/app_dimensions.dart';
import '../core/const/app_typography.dart';
import '../../core/const/app_assets.dart';
import '../core/utils/blur_utils.dart';

import '../../widgets/header_delegate.dart';
import '../../widgets/add_transaction_dialog.dart';
import '../../widgets/empty_state_view.dart';
import '../../widgets/empty_state_illustrations.dart';
import '../../widgets/glass_action_button.dart';
import '../../widgets/monitoring_setup_dialog.dart';
import '../../widgets/microphone_setup_dialog.dart';
import '../../widgets/recording_hud.dart';
import '../core/view_models/person_view_model.dart';
import '../core/models/person_transaction.dart';
import '../core/utils/voice_parser.dart';
import '../core/services/speech_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../shared/widgets/home_app_bar.dart';
import '../shared/widgets/home_balance_section.dart';
import '../shared/widgets/home_search_bar.dart';
import '../shared/widgets/home_transaction_list.dart';

import 'transactions_history_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late ScrollController _scrollController;
  bool _showFab = true;
  double _turns = 0.0;
  StreamSubscription<String>? _uiEventSubscription;

  final SpeechService _speechService = SpeechService();
  String _recordingText = '';
  bool _isRecording = false;

  // Cached rather than looked up fresh inside the empty-state FutureBuilder:
  // that build method runs on every rebuild of this page, and a fresh
  // Future each time made the auto-detection button/badge flicker.
  late Future<bool> _autoDetectEnabledFuture;

  // Pointer-hint tour: one GlobalKey per stop, and a guard so the tour is
  // only ever kicked off once per time this tab becomes active (it's the
  // rebuild-on-"did I just become the active tab" check in build() that can
  // fire repeatedly, not the tour itself).
  final GlobalKey _tourBalanceCardKey = GlobalKey();
  final GlobalKey _tourAddIncomeKey = GlobalKey();
  final GlobalKey _tourMicKey = GlobalKey();
  final GlobalKey _tourAddExpenseKey = GlobalKey();
  bool _tourAttempted = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _autoDetectEnabledFuture = TransactionDetectionService.isEnabled();

    _uiEventSubscription = NativeBridge.uiEvents.listen(_handleUiEvent);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final pendingEvent = NativeBridge.consumePendingEvent();
      if (pendingEvent != null) {
        _handleUiEvent(pendingEvent);
      }
    });
  }

  /// Starts the Home pointer-hint tour the first time this tab is actually
  /// the visible one (Home lives inside a `PageView` that keeps every tab
  /// mounted, so `initState` alone would fire this while another tab is on
  /// screen) and only if it hasn't already been seen.
  void _maybeStartTour(bool isActiveTab) {
    if (_tourAttempted || !isActiveTab) return;
    _tourAttempted = true;
    TourService.hasSeenHome().then((seen) {
      if (seen || !mounted) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ShowcaseView.get().startShowCase([
          _tourBalanceCardKey,
          _tourAddIncomeKey,
          _tourMicKey,
          _tourAddExpenseKey,
        ]);
        TourService.markHomeSeen();
      });
    });
  }

  void _scrollListener() {
    if (!_scrollController.hasClients || !mounted) return;

    final position = _scrollController.position;
    final atTop = position.pixels <= 0;

    final scrollingUp = position.userScrollDirection == ScrollDirection.forward;
    final scrollingDown =
        position.userScrollDirection == ScrollDirection.reverse;
    final isEmpty = context.read<TransactionViewModel>().transactions.isEmpty;

    bool nextShowFab = _showFab;

    if (isEmpty || atTop || scrollingUp) {
      nextShowFab = true;
    } else if (scrollingDown) {
      nextShowFab = false;
    }

    if (nextShowFab != _showFab) {
      setState(() => _showFab = nextShowFab);
    }
  }

  void _handleUiEvent(String event) {
    Future.delayed(AppConstants.homeArrivalDelay, () {
      if (!mounted) return;
      if (event == 'SHOW_ADD_INCOME') {
        _showAddTransactionDialog(isIncome: true);
      } else if (event == 'SHOW_ADD_EXPENSE') {
        _showAddTransactionDialog(isIncome: false);
      } else if (event == 'SHOW_VOICE_INPUT') {
        _startRecording();
      } else if (event == 'SYNC_STARTED') {
        context.read<TransactionViewModel>().setSyncing(true);
      } else if (event == 'SYNC_FINISHED') {
        context.read<TransactionViewModel>().setSyncing(false);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _uiEventSubscription?.cancel();
    super.dispose();
  }

  void _showAddTransactionDialog({required bool isIncome}) {
    BlurUtils.showBlurredBottomSheet(
      context: context,
      child: AddTransactionDialog(isIncome: isIncome),
    );
  }

  Future<void> _startRecording() async {
    final l10n = AppLocalizations.of(context)!;
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => ConditionalBackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          isRouteBarrier: true,
          child: const MicrophoneSetupDialog(),
        ),
      );
      if (confirmed == true) {
        status = await Permission.microphone.request();
        if (!status.isGranted) {
          Fluttertoast.showToast(msg: l10n.microPermissionDenied);
          return;
        }
      } else {
        return;
      }
    }

    final success = await _speechService.initSpeech();
    if (success) {
      HapticFeedback.heavyImpact();
      setState(() {
        _isRecording = true;
        _recordingText = '';
      });
      _speechService.startListening((text) {
        setState(() => _recordingText = text);
      });
    } else {
      Fluttertoast.showToast(msg: l10n.speechUnavailable);
    }
  }

  Future<void> _stopAndSaveRecording() async {
    final l10n = AppLocalizations.of(context)!;
    if (!_isRecording) return;

    HapticFeedback.mediumImpact();
    setState(() => _isRecording = false);
    await _speechService.stopListening();

    if (_recordingText.isEmpty) return;

    final pvm = context.read<PersonViewModel>();
    final tvm = context.read<TransactionViewModel>();

    final result = VoiceParser.parse(
      _recordingText,
      knownPeople: pvm.people.map((p) => p.name).toList(),
    );

    if (result.isRequest &&
        result.amount != null &&
        result.personName != null) {
      showDialog(
        context: context,
        builder: (context) => RequestMoneyDialog(
          personName: result.personName!,
          amount: result.amount!,
        ),
      );
      Fluttertoast.showToast(msg: l10n.openingRequestQrFor(result.personName!));
      return;
    }

    if (result.amount != null) {
      final tx = Transaction(
        amount: result.amount!,
        note: result.note,
        category: result.category ?? 'Other',
        account: 'Cash',
        date: DateTime.now(),
        isIncome: result.isIncome ?? false,
      );

      await tvm.addTransaction(tx);

      if (result.personName != null) {
        pvm.addPersonTransaction(
          PersonTransaction(
            personName: result.personName!,
            amount: tx.amount,
            note: tx.note,
            date: tx.date,
            isIncome: tx.isIncome,
          ),
          result.personName!,
        );
      }

      Fluttertoast.showToast(
        msg: l10n.savedAmount(
            '${tvm.currencySymbol}${tx.amount.toStringAsFixed(0)}',
            tx.category),
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
    } else {
      HapticFeedback.vibrate();
      Fluttertoast.showToast(
        msg: l10n.couldNotFindAmount,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
      );
      // Fallback: Open manual dialog
      _showAddTransactionDialog(isIncome: result.isIncome ?? false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final transactionViewModel = context.watch<TransactionViewModel>();
    final isDark = context.select<ThemeViewModel, bool>((vm) => vm.isDarkMode);
    // Only rebuilds Home when "is Home the active tab" actually flips, not
    // on every switch between the other tabs.
    final isActiveTab = context
        .select<LiquidNavbarViewModel, bool>((vm) => vm.currentIndex == 0);
    _maybeStartTour(isActiveTab);

    final grouped = transactionViewModel.groupedFilteredTransactions;
    final txns = transactionViewModel.filteredTransactions;

    return Scaffold(
      extendBody: true,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 850),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              HomeAppBar(
                isDark: isDark,
                turns: _turns,
                isSyncing: transactionViewModel.isSyncing,
                onLeadingTap: () => setState(() => _turns += 4),
              ),
              HomeBalanceSection(
                viewModel: transactionViewModel,
                showcaseKey: _tourBalanceCardKey,
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: HomeHeaderDelegate(
                  height: 150 * MediaQuery.textScalerOf(context).scale(1) +
                      20, // Dynamic height prevents overflow when system font size is increased
                  child: _buildPinnedHeader(context),
                ),
              ),
              if (txns.isNotEmpty)
                HomeTransactionList(grouped: grouped)
              else
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: _buildEmptyState(),
                ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: txns.isNotEmpty
                      ? MediaQuery.of(context).padding.bottom +
                          AppDimensions.paddingXLarge * 2.5
                      : MediaQuery.of(context).padding.bottom +
                          AppDimensions.paddingXLarge * 3,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 130, // Lifted slightly higher for better layout
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              reverseDuration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: Tween<double>(begin: 0.8, end: 1.0).animate(
                      CurvedAnimation(
                          parent: animation, curve: Curves.easeOutBack),
                    ),
                    child: child,
                  ),
                );
              },
              child: _isRecording
                  ? RecordingHUD(
                      key: const ValueKey('recording_hud'),
                      text: _recordingText,
                      isListening: _isRecording,
                    )
                  : const SizedBox.shrink(key: ValueKey('empty')),
            ),
          ),
          AnimatedSlide(
            offset: _showFab ? Offset.zero : const Offset(0, 2),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: AnimatedOpacity(
              opacity: _showFab ? 1.0 : 0.5,
              duration: const Duration(milliseconds: 300),
              child: _buildDualFab(theme),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPinnedHeader(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      child: ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            right: 8.0,
            left: 8.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface.withValues(alpha: 0.15),
              border: Border(
                top: BorderSide(
                  color: theme.dividerColor.withValues(alpha: 0.1),
                  width: 1.3,
                ),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                _buildDragHandle(context),
                const SizedBox(height: AppDimensions.paddingXSmall),
                HomeSearchBar(onFilterTap: () {
                  HapticFeedback.mediumImpact();
                  _showSortDialog(context);
                }),
                const SizedBox(height: AppDimensions.paddingXSmall),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.paddingStandard,
                    vertical: AppDimensions.paddingSmall,
                  ),
                  child: _buildTransactionHeaderRow(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionHeaderRow(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            l10n.transactions,
            style: GoogleFonts.dmSans(
              fontSize: AppTypography.fontSizeSubHeader +
                  2, // Slightly larger for section header
              fontWeight: AppTypography
                  .fontWeightSemiBold, // Stronger weight for premium feel
              letterSpacing: 0,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const TransactionsHistoryPage(),
                ),
              );
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppDimensions.borderRadiusMedium),
              ),
            ),
            child: Row(
              children: [
                Text(
                  l10n.seeAll,
                  style: GoogleFonts.dmSans(
                    fontSize: AppTypography.fontSizeSmall + 1,
                    fontWeight: AppTypography.fontWeightSemiBold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 18,
                  color: Theme.of(context).colorScheme.primary,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSortDialog(BuildContext context) {
    final theme = Theme.of(context);
    final vm = context.read<TransactionViewModel>();
    final l10n = AppLocalizations.of(context)!;

    BlurUtils.showBlurredBottomSheet(
      context: context,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppDimensions.borderRadiusXLarge)),
        ),
        padding: const EdgeInsets.all(AppDimensions.paddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.dividerColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.sortBy,
              style: GoogleFonts.dmSans(
                fontSize: AppTypography.fontSizeLarge,
                fontWeight: AppTypography.fontWeightBold,
              ),
            ),
            const SizedBox(height: 16),
            _buildSortOption(
                context, l10n.sortByDateRecent, SortOption.dateNewest, vm),
            _buildSortOption(
                context, l10n.sortByDateOldest, SortOption.dateOldest, vm),
            _buildSortOption(context, l10n.sortByAmountHighest,
                SortOption.amountHighest, vm),
            _buildSortOption(
                context, l10n.sortByAmountLowest, SortOption.amountLowest, vm),
            _buildSortOption(context, l10n.category, SortOption.category, vm),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSortOption(BuildContext context, String title, SortOption option,
      TransactionViewModel vm) {
    final theme = Theme.of(context);
    final isSelected = vm.currentSortOption == option;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: GoogleFonts.dmSans(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurface,
        ),
      ),
      trailing: isSelected
          ? Icon(Icons.check_circle_rounded, color: theme.colorScheme.primary)
          : null,
      onTap: () {
        vm.setSortOption(option);
        Navigator.pop(context);
      },
    );
  }

  Widget _buildDragHandle(BuildContext context) {
    return Center(
      child: Container(
        width: AppDimensions.avatarSizeStandard,
        height: AppDimensions.spacingXSmall,
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(AppDimensions.spacingTiny),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final accent = theme.colorScheme.primary;

    return EmptyStateView(
      illustration: WalletEmptyIllustration(color: accent),
      title: l10n.emptyWalletTitle,
      description: l10n.emptyWalletDesc,
      action: FutureBuilder<bool>(
        future: _autoDetectEnabledFuture,
        builder: (context, snapshot) {
          final isEnabled = snapshot.data ?? false;
          if (isEnabled) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.1),
                borderRadius:
                    BorderRadius.circular(AppDimensions.borderRadiusMedium),
                border: Border.all(
                  color: accent.withValues(alpha: 0.25),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _PulsingDot(color: accent),
                  const SizedBox(width: 10),
                  Text(
                    l10n.autoDetectionActive,
                    style: GoogleFonts.dmSans(
                      color: accent,
                      fontWeight: AppTypography.fontWeightBold,
                      fontSize: AppTypography.fontSizeSmall + 1,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            );
          }

          return EmptyStateActionButton(
            icon: Icons.auto_awesome,
            label: l10n.autoDetection,
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (context) => ConditionalBackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  isRouteBarrier: true,
                  child: const MonitoringSetupDialog(),
                ),
              );

              if (confirmed == true) {
                await TransactionDetectionService.setEnabled(true);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(l10n.autoDetectionEnabledSuccess),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                  setState(() {
                    _autoDetectEnabledFuture =
                        TransactionDetectionService.isEnabled();
                  });
                }
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildDualFab(ThemeData theme) {
    final l10n = AppLocalizations.of(context)!;
    return GlassFab(
      marginBottom: 65,
      children: [
        ClipOval(
          child: Showcase(
            key: _tourAddIncomeKey,
            title: l10n.tourAddIncomeTitle,
            description: l10n.tourAddIncomeDesc,
            titleTextStyle: TourStyle.title(),
            descTextStyle: TourStyle.description(),
            targetShapeBorder: const CircleBorder(),
            child: GlassActionButton(
              icon: SvgAppIcons.incomeIcon,
              color: AppColors.accentGreen,
              onTap: () => _showAddTransactionDialog(isIncome: true),
            ),
          ),
        ),
        const SizedBox(width: 8),
        ClipOval(
          child: Showcase(
            key: _tourMicKey,
            title: l10n.tourMicTitle,
            description: l10n.tourMicDesc,
            titleTextStyle: TourStyle.title(),
            descTextStyle: TourStyle.description(),
            targetShapeBorder: const CircleBorder(),
            child: GestureDetector(
              onLongPressStart: (_) => _startRecording(),
              onLongPressEnd: (_) async {
                await Future.delayed(const Duration(milliseconds: 900));
                _stopAndSaveRecording();
              },
              onLongPressUp: () async {
                // Both handlers used for robustness, delay ensures last words captured
                await Future.delayed(const Duration(milliseconds: 900));
                _stopAndSaveRecording();
              },
              child: GlassActionButton(
                icon: Icons.mic_rounded,
                color: theme.colorScheme.primary,
                onTap: () {
                  Fluttertoast.showToast(msg: l10n.holdToRecord);
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        ClipOval(
          child: Showcase(
            key: _tourAddExpenseKey,
            title: l10n.tourAddExpenseTitle,
            description: l10n.tourAddExpenseDesc,
            titleTextStyle: TourStyle.title(),
            descTextStyle: TourStyle.description(),
            targetShapeBorder: const CircleBorder(),
            child: GlassActionButton(
              icon: SvgAppIcons.expenseIcon,
              color: AppColors.accentRed,
              onTap: () => _showAddTransactionDialog(isIncome: false),
            ),
          ),
        ),
      ],
    );
  }
}

class _PulsingDot extends StatefulWidget {
  const _PulsingDot({required this.color});

  final Color color;

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<double> _opacity;

  static const _dotSize = 8.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    _scale = Tween<double>(begin: 1.0, end: 2.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _opacity = Tween<double>(begin: 0.45, end: 0.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // A scaling/fading ring composited on the GPU (cheap) instead of an
    // animated BoxShadow blur — recomputing a blurred shadow bitmap every
    // frame is one of the most expensive things a widget can do while it
    // just sits idle on screen.
    return SizedBox(
      width: _dotSize,
      height: _dotSize,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => Opacity(
              opacity: _opacity.value,
              child: Transform.scale(scale: _scale.value, child: child),
            ),
            child: Container(
              width: _dotSize,
              height: _dotSize,
              decoration: BoxDecoration(
                color: widget.color,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            width: _dotSize,
            height: _dotSize,
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
