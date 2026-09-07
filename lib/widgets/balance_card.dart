import 'dart:ui';
import 'package:aspends_tracker/core/utils/blur_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../core/view_models/theme_view_model.dart';
import '../core/view_models/transaction_view_model.dart';
import '../core/const/app_colors.dart';
import '../core/const/app_dimensions.dart';
import '../core/const/app_typography.dart';
import '../core/const/app_assets.dart';
import '../l10n/generated/app_localizations.dart';

class BalanceCard extends StatefulWidget {
  final double balance;
  final Function(double) onBalanceUpdate;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.onBalanceUpdate,
  });

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    // Optimized rebuilds with select
    final isDark = context.select<ThemeViewModel, bool>((vm) => vm.isDarkMode);
    final totalIncome =
        context.select<TransactionViewModel, double>((vm) => vm.totalIncome);
    final totalExpenses =
        context.select<TransactionViewModel, double>((vm) => vm.totalSpend);

    final isNegative = totalIncome < totalExpenses;

    final Color backgroundColor;

    if (isNegative) {
      backgroundColor = isDark
          ? AppColors.balanceCardDarkModeNegative
          : AppColors.balanceCardLightModeNegative;
    } else {
      backgroundColor = isDark
          ? AppColors.balanceCardDarkModePositive
          : AppColors.balanceCardLightModePositive;
    }

    return GestureDetector(
      onLongPress: () {
        HapticFeedback.lightImpact();
        _showEditBalanceDialog(context, isDark);
      },
      onTap: () {
        HapticFeedback.selectionClick();
        _showBalanceDetails(context, isDark);
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  // vertical: AppDimensions.paddingTiny,
                  ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: AppDimensions.paddingSmall),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.borderRadiusTiny),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.05),
                    //   blurRadius: 30,
                    //   spreadRadius: 0,
                    //   offset: const Offset(0, 15),
                    // ),
                    // BoxShadow(
                    //   color: backgroundColor.withValues(alpha: isDark ? 0.1 : 0.2),
                    //   blurRadius: 30,
                    //   spreadRadius: -5,
                    //   offset: const Offset(0, 15),
                    // ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.borderRadiusTiny),
                  child: ConditionalBackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppDimensions.borderRadiusLarge),
                        // Liquid Glass base color
                        color: backgroundColor.withValues(
                            alpha: isDark ? 0.05 : 0.15),
                        // 3D Glass border highlight
                        border: Border.all(
                          color: Colors.white
                              .withValues(alpha: isDark ? 0.1 : 0.6),
                          width: 1.5,
                        ),
                        // 3D liquid lighting gradient
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: isDark
                              ? (isNegative
                                  ? [
                                      AppColors.accentRed
                                          .withValues(alpha: 0.2),
                                      AppColors.accentRed
                                          .withValues(alpha: 0.05),
                                      Colors.transparent,
                                    ]
                                  : [
                                      AppColors.accentGreen
                                          .withValues(alpha: 0.2),
                                      AppColors.accentGreen
                                          .withValues(alpha: 0.05),
                                      Colors.transparent,
                                    ])
                              : (isNegative
                                  ? [
                                      Colors.white.withValues(alpha: 0.6),
                                      AppColors.accentRed
                                          .withValues(alpha: 0.1),
                                      AppColors.accentRed
                                          .withValues(alpha: 0.05),
                                    ]
                                  : [
                                      Colors.white.withValues(alpha: 0.6),
                                      AppColors.accentGreen
                                          .withValues(alpha: 0.1),
                                      AppColors.accentGreen
                                          .withValues(alpha: 0.05),
                                    ]),
                          stops: const [0.0, 0.5, 1.0],
                        ),

                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.greenAccent.withOpacity(isDark ? 0.3 : 0.08),
                        //     blurRadius: 25,
                        //     spreadRadius: -5,
                        //     offset: const Offset(0, 10),
                        //   ),
                        // ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(
                            AppDimensions.borderRadiusLarge),
                        child: Stack(
                          children: [
                            // Top-left glowing circle
                            Positioned(
                              left: -60,
                              top: -60,
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (isNegative
                                          ? AppColors.accentRed
                                          : AppColors.accentGreen)
                                      .withOpacity(0.006),
                                  boxShadow: [
                                    BoxShadow(
                                      color: (isNegative
                                              ? AppColors.accentRed
                                              : AppColors.accentGreen)
                                          .withOpacity(0.35),
                                      blurRadius: 60,
                                      spreadRadius: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Bottom-right glowing circle
                            Positioned(
                              right: -60,
                              bottom: -60,
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (isNegative
                                          ? AppColors.accentRed
                                          : AppColors.accentGreen)
                                      .withOpacity(0.006),
                                  boxShadow: [
                                    BoxShadow(
                                      color: (isNegative
                                              ? AppColors.accentRed
                                              : AppColors.accentGreen)
                                          .withOpacity(0.35),
                                      blurRadius: 60,
                                      spreadRadius: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppDimensions.paddingLarge,
                                vertical: AppDimensions.paddingStandard,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text(
                                          l10n.totalBalance,
                                          style: GoogleFonts.dmSans(
                                            fontSize:
                                                AppTypography.fontSizeMedium,
                                            fontWeight:
                                                AppTypography.fontWeightBold,
                                            color: isDark
                                                ? Colors.white
                                                    .withValues(alpha: 0.9)
                                                : Colors.black
                                                    .withValues(alpha: 0.9),
                                            letterSpacing: 0,
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: GestureDetector(
                                            onTap: () {
                                              HapticFeedback.lightImpact();
                                              _showEditBalanceDialog(
                                                  context, isDark);
                                            },
                                            child: Container(
                                              width: AppDimensions
                                                  .avatar3SizeStandard,
                                              height: AppDimensions
                                                  .avatar3SizeStandard,
                                              padding: const EdgeInsets.all(
                                                  AppDimensions.paddingSmall),
                                              decoration: BoxDecoration(
                                                color: (isNegative
                                                        ? AppColors.accentRed
                                                        : AppColors.accentGreen)
                                                    .withValues(alpha: 0.1),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppDimensions
                                                            .borderRadiusFull),
                                                border: Border.all(
                                                  color: (isNegative
                                                          ? AppColors.accentRed
                                                          : AppColors
                                                              .accentGreen)
                                                      .withValues(alpha: 0.3),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: SvgPicture.asset(
                                                  SvgAppIcons.editIcon,
                                                  colorFilter: ColorFilter.mode(
                                                    isNegative
                                                        ? AppColors.accentRed
                                                        : AppColors.accentGreen,
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // const SizedBox(height: AppDimensions.paddingSmall),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Flexible + FittedBox: a wide balance
                                      // scales down to fit the card's width
                                      // instead of overflowing past it —
                                      // CurrencyText's own step-based
                                      // shrinking isn't always enough on its
                                      // own for very large balances.
                                      Flexible(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: CurrencyText(
                                            amount: widget.balance,
                                            isNegative: isNegative,
                                            isDark: isDark,
                                            integerSize: 40,
                                            symbolSize: 40,
                                            fontName: GoogleFonts.bayon(),
                                            extraColor: isDark
                                                ? isNegative
                                                    ? AppColors
                                                        .balanceCardLineDarkModeNegative
                                                    : AppColors
                                                        .balanceCardLineDarkModePositive
                                                : isNegative
                                                    ? AppColors
                                                        .balanceCardLineLightModeNegative
                                                    : AppColors
                                                        .balanceCardLineLightModePositive,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                      height: AppDimensions.paddingSmall),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: StatItem(
                                          label: l10n.income,
                                          amount: totalIncome,
                                          icon: SvgAppIcons.incomeIcon,
                                          color: AppColors.accentGreen,
                                          isDark: isDark,
                                        ),
                                      ),
                                      Container(
                                        height:
                                            AppDimensions.avatar2SizeStandard,
                                        width: 1,
                                        color: isDark
                                            ? Colors.white
                                                .withValues(alpha: 0.2)
                                            : Colors.black
                                                .withValues(alpha: 0.1),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal:
                                                AppDimensions.paddingStandard),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: StatItem(
                                            label: l10n.expense,
                                            amount: totalExpenses,
                                            icon: SvgAppIcons.expenseIcon,
                                            color: AppColors.accentRed,
                                            isDark: isDark,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Tzzhin decorative lines
            Positioned(
              bottom: 3,
              left: 50,
              right: 50,
              child: DecorativeLine(
                  color: isNegative
                      ? AppColors.accentRed.withOpacity(0.22)
                      : AppColors.accentGreen.withOpacity(0.22),
                  //color: isDark ? Colors.grey.shade900 : Colors.grey.shade200,
                  position: LinePosition.bottom),
            ),
          ]),
        ),
      ),
    );
  }

  void _showBalanceDetails(BuildContext context, bool isDark) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final enableBlurEffects = context.read<ThemeViewModel>().enableBlurEffects;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        isRouteBarrier: true,
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface
                .withValues(alpha: enableBlurEffects ? 0.8 : 1.0),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: AppDimensions.avatarSizeStandard,
                height: AppDimensions.spacingXSmall,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.3),
                  borderRadius:
                      BorderRadius.circular(AppDimensions.spacingTiny),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                l10n.balanceDetailsTitle,
                style: GoogleFonts.dmSans(
                  fontSize: AppTypography.fontSizeLarge,
                  fontWeight: AppTypography.fontWeightBold,
                ),
              ),
              const SizedBox(height: 24),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(AppDimensions.paddingSmall),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadiusSmall),
                  ),
                  child: SvgPicture.asset(
                    SvgAppIcons.walletIcon,
                    colorFilter: ColorFilter.mode(
                        theme.colorScheme.primary, BlendMode.srcIn),
                    width: AppDimensions.iconSizeMedium,
                    height: AppDimensions.iconSizeMedium,
                  ),
                ),
                title: Text(l10n.tapHoldToEditBalance),
                subtitle: Text(l10n.longPressBalanceCardHint),
              ),
              const SizedBox(
                  height:
                      AppDimensions.paddingSmall + AppDimensions.paddingXSmall),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditBalanceDialog(BuildContext context, bool isDark) {
    final controller =
        TextEditingController(text: widget.balance.toStringAsFixed(2));
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final enableBlurEffects = context.read<ThemeViewModel>().enableBlurEffects;

    showDialog(
      context: context,
      builder: (_) => ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        isRouteBarrier: true,
        child: AlertDialog(
          backgroundColor: theme.colorScheme.surface
              .withValues(alpha: enableBlurEffects ? 0.8 : 1.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          title: Text(
            l10n.editBalanceTitle,
            style: const TextStyle(fontWeight: AppTypography.fontWeightBold),
          ),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
              hintText: l10n.newBalanceLabel,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(AppDimensions.paddingSmall + 4),
                child: SvgPicture.asset(
                  SvgAppIcons.searchIcon,
                  colorFilter:
                      ColorFilter.mode(theme.disabledColor, BlendMode.srcIn),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppDimensions.borderRadiusMedium),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            ElevatedButton(
              onPressed: () {
                final newBalance = double.tryParse(controller.text);
                if (newBalance != null) {
                  widget.onBalanceUpdate(newBalance);
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.paddingLarge,
                    vertical: AppDimensions.paddingSmall +
                        AppDimensions.paddingXSmall),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadiusSmall)),
              ),
              child: Text(l10n.save),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrencyText extends StatelessWidget {
  final double amount;
  final bool isNegative;
  final bool isDark;
  final double integerSize;
  final double symbolSize;
  final TextStyle fontName;
  final Color extraColor;
  final bool useSmallDecimal;

  const CurrencyText({
    super.key,
    required this.amount,
    required this.isNegative,
    required this.isDark,
    required this.integerSize,
    required this.symbolSize,
    required this.fontName,
    this.extraColor = Colors.transparent,
    this.useSmallDecimal = false,
  });

  @override
  Widget build(BuildContext context) {
    final currencySymbol =
        context.select<ThemeViewModel, String>((vm) => vm.currencySymbol);
    final formatted = NumberFormat.currency(
      symbol: '',
      decimalDigits: 2,
    ).format(amount);

    final parts = formatted.split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '00';

    double scaleFactor = 1.0;
    final digits = integerPart.replaceAll(RegExp(r'[^0-9]'), '').length;
    if (digits > 9) {
      scaleFactor = 0.55;
    } else if (digits > 7) {
      scaleFactor = 0.70;
    } else if (digits > 5) {
      scaleFactor = 0.85;
    }

    final computedSymbolSize = symbolSize * scaleFactor;
    final computedIntegerSize = integerSize * scaleFactor;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: currencySymbol,
            style: GoogleFonts.dmSans(
                fontSize: computedSymbolSize,
                fontWeight: AppTypography.fontWeightSemiBold,
                // color: ,
                color: useSmallDecimal
                    ? isDark
                        ? Colors.white.withValues(alpha: 0.9)
                        : Colors.black.withValues(alpha: 0.9)
                    : isNegative
                        ? AppColors.accentRed
                        : AppColors.accentGreen),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: integerPart,
            style: GoogleFonts.dmSans(
              fontSize: computedIntegerSize,
              height: 1,
              fontWeight: AppTypography.fontWeightMedium,
              color: extraColor,
              // color: isNegative ? AppColors.accentRed : AppColors.accentGreen,
              letterSpacing: 0,
            ),
          ),
          TextSpan(
            text: '.$decimalPart',
            style: GoogleFonts.dmSans(
              fontSize: useSmallDecimal
                  ? computedIntegerSize * 0.63
                  : computedIntegerSize,
              fontWeight: AppTypography.fontWeightMedium,
              color: extraColor,
              // color: isNegative ? AppColors.accentRed : AppColors.accentGreen,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String label;
  final double amount;
  final String icon;
  final Color color;
  final bool isDark;

  const StatItem({
    super.key,
    required this.label,
    required this.amount,
    required this.icon,
    required this.color,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              width: AppDimensions.iconSizeXXSmall,
              height: AppDimensions.iconSizeXXSmall,
            ),
            const SizedBox(width: AppDimensions.paddingSmall),
            Text(
              label,
              style: GoogleFonts.dmSans(
                fontSize: AppTypography.fontSizeMedium,
                fontWeight: AppTypography.fontWeightSemiBold,
                color: isDark
                    ? Colors.white.withValues(alpha: 0.9)
                    : Colors.black.withValues(alpha: 0.9),
              ),
            ),
          ],
        ),
        CurrencyText(
          amount: amount,
          useSmallDecimal: true,
          isNegative: false,
          // Stats are always shown in their respective colors
          isDark: isDark,
          integerSize: AppTypography.fontSizeRegular + 2,
          symbolSize: AppTypography.fontSizeRegular + 2,
          extraColor: isDark ? Colors.white : Colors.black,
          fontName: GoogleFonts.dmSans(
            fontWeight: AppTypography.fontWeightMedium,
            color: isDark
                ? Colors.white.withValues(alpha: 0.9)
                : Colors.black.withValues(alpha: 0.9),
            // fontSize: AppTypography.fontSizeSmall
          ),
        ),
      ],
    );
  }
}

enum LinePosition { top, bottom }

class DecorativeLine extends StatelessWidget {
  final Color color;
  final LinePosition position;

  const DecorativeLine({
    super.key,
    required this.color,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: position == LinePosition.top
              ? const Radius.circular(AppDimensions.borderRadiusFull)
              : Radius.zero,
          topRight: position == LinePosition.top
              ? const Radius.circular(AppDimensions.borderRadiusFull)
              : Radius.zero,
          bottomLeft: position == LinePosition.bottom
              ? const Radius.circular(AppDimensions.borderRadiusFull)
              : Radius.zero,
          bottomRight: position == LinePosition.bottom
              ? const Radius.circular(AppDimensions.borderRadiusFull)
              : Radius.zero,
        ),
      ),
    );
  }
}
