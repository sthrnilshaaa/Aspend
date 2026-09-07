import 'dart:ui';
import 'package:aspends_tracker/core/utils/blur_utils.dart';
import 'package:flutter/material.dart';
import 'package:aspends_tracker/l10n/generated/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../core/view_models/theme_view_model.dart';
import '../core/services/native_bridge.dart';
import 'dart:async';
import 'home_page.dart';
import 'people_page.dart';
import 'chart_page.dart';
import 'settings_page.dart';
import '../core/utils/responsive_utils.dart';
import '../shared/widgets/native_glass_navbar.dart';
import '../core/view_models/liquid_navbar_view_model.dart';
import 'package:hive/hive.dart';
import 'package:local_auth/local_auth.dart';
import 'package:showcaseview/showcaseview.dart';
import '../core/const/app_constants.dart';
import '../core/const/app_typography.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({super.key});

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  int _selectedIndex = 0;
  StreamSubscription<String>? _uiEventSubscription;
  late final PageController _pageController;
  late final AnimationController _pulseController;

  DateTime? _backgroundTime;
  bool _isLocked = false;

  // Cache screens to avoid rebuilds and glitching
  final List<Widget> _screens = [
    const HomePage(),
    const PeopleTab(),
    const ChartPage(),
    const SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
    // Not started here: this ticks every frame, and RootNavigation lives for
    // the whole app session, so it only runs while the lock overlay is
    // actually shown (see the _isLocked toggles below).
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _uiEventSubscription = NativeBridge.uiEvents.listen((event) {
      if (event == 'SHOW_ADD_INCOME' || event == 'SHOW_ADD_EXPENSE') {
        _onItemTapped(0); // Switch to Home tab
      }
    });

    WidgetsBinding.instance.addObserver(this);

    // One registration for the whole app session: RootNavigation is the
    // single long-lived ancestor of every tab (they live in a PageView that
    // never disposes them), and Person Details' pointer-hint tour also uses
    // this same default scope, so it must already be registered by the time
    // any of them wants to start a showcase.
    // skipIfTargetNotPresent guards the tour steps that point at the first
    // row of a lazily-built list (People's first card, a person's first
    // transaction) — if that row somehow isn't attached yet when its turn
    // comes up, the tour skips it and carries on instead of stopping early.
    ShowcaseView.register(skipIfTargetNotPresent: true);
  }

  @override
  void dispose() {
    _uiEventSubscription?.cancel();
    _pageController.dispose();
    _pulseController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    ShowcaseView.get().unregister();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final settingsBox = Hive.box(AppConstants.settingsBox);
    final appLockEnabled =
        settingsBox.get('appLockEnabled', defaultValue: false);

    if (!appLockEnabled) return;

    if (state == AppLifecycleState.paused) {
      _backgroundTime = DateTime.now();
    } else if (state == AppLifecycleState.resumed) {
      if (_backgroundTime != null) {
        final elapsed = DateTime.now().difference(_backgroundTime!);
        if (elapsed.inSeconds >= 15) {
          setState(() {
            _isLocked = true;
          });
          _pulseController.repeat(reverse: true);
          _authenticate();
        }
      }
      _backgroundTime = null;
    }
  }

  Future<void> _authenticate() async {
    try {
      final localAuth = LocalAuthentication();
      final canCheckDeviceSupport = await localAuth.isDeviceSupported();

      if (canCheckDeviceSupport && mounted) {
        final l10n = AppLocalizations.of(context)!;
        final didAuthenticate = await localAuth.authenticate(
          localizedReason: l10n.appLockDesc,
          biometricOnly: false,
          persistAcrossBackgrounding: true,
        );
        if (didAuthenticate) {
          setState(() {
            _isLocked = false;
          });
          _pulseController.stop();
        }
      } else {
        setState(() {
          _isLocked = false;
        });
        _pulseController.stop();
      }
    } catch (e) {
      debugPrint('RootNavigation: Authentication error: $e');
    }
  }

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final isDark = context.watch<ThemeViewModel>().isDarkMode;
    final isLargeScreen = !ResponsiveUtils.isMobile(context);
    final l10n = AppLocalizations.of(context)!;

    Widget mainContent = ChangeNotifierProvider(
      create: (_) => LiquidNavbarViewModel(),
      child: Scaffold(
        // The nav bar is Positioned(bottom: 0) inside this Scaffold's own
        // body — left at the default `true`, the keyboard opening (e.g. a
        // search field on Home/People) shrinks the body and drags the bar
        // up with it. false keeps the whole shell, nav bar included, fixed
        // in place; the search fields' own scroll views already handle
        // scrolling themselves into view.
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            if (isLargeScreen)
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: isDark
                          ? Colors.white.withValues(alpha: 0.1)
                          : Colors.black.withValues(alpha: 0.1),
                      width: 1,
                    ),
                  ),
                ),
                child: NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped,
                  labelType: NavigationRailLabelType.selected,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  indicatorColor:
                      theme.colorScheme.primary.withValues(alpha: 0.15),
                  minWidth: 80,
                  selectedIconTheme: IconThemeData(
                    color: theme.colorScheme.primary,
                    size: 28,
                  ),
                  unselectedIconTheme: IconThemeData(
                    color: isDark ? Colors.white38 : Colors.black38,
                    size: 24,
                  ),
                  selectedLabelTextStyle: GoogleFonts.dmSans(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  unselectedLabelTextStyle: GoogleFonts.dmSans(
                    color: isDark ? Colors.white38 : Colors.black38,
                    fontSize: 12,
                  ),
                  destinations: [
                    NavigationRailDestination(
                      icon: const Icon(Icons.home_outlined),
                      selectedIcon: const Icon(Icons.home_rounded),
                      label: Text(l10n.appName),
                    ),
                    NavigationRailDestination(
                      icon: const Icon(Icons.group_outlined),
                      selectedIcon: const Icon(Icons.group_rounded),
                      label: Text(l10n.people),
                    ),
                    NavigationRailDestination(
                      icon: const Icon(Icons.auto_graph_outlined),
                      selectedIcon: const Icon(Icons.auto_graph_rounded),
                      label: Text(l10n.charts),
                    ),
                    NavigationRailDestination(
                      icon: const Icon(Icons.settings_outlined),
                      selectedIcon: const Icon(Icons.settings_rounded),
                      label: Text(l10n.settings),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: _screens,
                  ),
                  if (!isLargeScreen) ...[
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              isDark
                                  ? Colors.black.withValues(alpha: 0.05)
                                  : Colors.white.withValues(alpha: 0.05),
                              Colors.transparent,
                            ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            stops: const [0.0, 0.6],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SafeArea(
                        child: Center(
                          child: NativeGlassNavBar(
                            currentIndex: _selectedIndex,
                            onTap: _onItemTapped,
                            tabs: [
                              NativeGlassNavBarItem(
                                label: l10n.appName,
                                symbol: 'house',
                              ),
                              NativeGlassNavBarItem(
                                label: l10n.people,
                                symbol: 'person.2',
                              ),
                              NativeGlassNavBarItem(
                                label: l10n.charts,
                                symbol: 'chart.xyaxis.line',
                              ),
                              NativeGlassNavBarItem(
                                label: l10n.settings,
                                symbol: 'gear',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );

    if (_isLocked) {
      return Stack(
        children: [
          mainContent,
          Positioned.fill(
            child: ConditionalBackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: theme.scaffoldBackgroundColor.withValues(alpha: 0.9),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScaleTransition(
                        scale: Tween(begin: 1.0, end: 1.1)
                            .animate(_pulseController),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary
                                .withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: theme.colorScheme.primary
                                  .withValues(alpha: 0.3),
                              width: 2,
                            ),
                          ),
                          child: Icon(
                            Icons.lock_outline_rounded,
                            size: 48,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        l10n.appLock,
                        style: GoogleFonts.dmSans(
                          fontSize: AppTypography.fontSizeLarge,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onSurface,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.appLockDesc,
                        style: GoogleFonts.dmSans(
                          fontSize: AppTypography.fontSizeSmall,
                          color: theme.colorScheme.onSurface
                              .withValues(alpha: 0.6),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 32),
                      ZoomTapAnimation(
                        onTap: _authenticate,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                theme.colorScheme.primary,
                                theme.colorScheme.secondary,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            l10n.tapToUnlock,
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return mainContent;
  }
}
