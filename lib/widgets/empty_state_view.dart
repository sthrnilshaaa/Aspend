import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../core/const/app_typography.dart';
import '../core/const/app_dimensions.dart';

/// A polished "nothing here yet" placeholder used whenever a list/grid has
/// no data to show (home tab, people, charts, transaction history, …).
///
/// Composition, top to bottom: a soft glowing icon badge, a bold title, an
/// optional muted description, and an optional call-to-action. The whole
/// thing gently fades + settles into place the first time it appears so it
/// reads as a deliberate moment rather than a blank gap in the layout.
class EmptyStateView extends StatelessWidget {
  final dynamic icon;
  final String title;
  final String? description;
  final Widget? action;

  /// Tint for the icon badge. Defaults to the theme's primary color, but
  /// each screen may pass its own accent (see [AppColors.accentIndigo],
  /// [AppColors.accentAmber], …) so empty states don't all look identical.
  final Color? accentColor;

  /// A bigger, hand-drawn scene (see empty_state_illustrations.dart) shown
  /// in place of the small tinted [icon] badge — used for the primary,
  /// "nothing here yet" empty states (Home, People) where a generic system
  /// icon would otherwise read as an afterthought.
  final Widget? illustration;

  const EmptyStateView({
    super.key,
    this.icon,
    required this.title,
    this.description,
    this.action,
    this.accentColor,
    this.illustration,
  }) : assert(icon != null || illustration != null,
            'EmptyStateView needs either an icon or an illustration.');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface;
    final accent = accentColor ?? theme.colorScheme.primary;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, t, child) {
        return Opacity(
          opacity: t,
          child: Transform.translate(
            offset: Offset(0, (1 - t) * 10),
            child: child,
          ),
        );
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingLarge,
            vertical: AppDimensions.spacingStandard,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                illustration ?? _IconBadge(icon: icon, color: accent),
                const SizedBox(height: AppDimensions.spacingStandard),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: AppTypography.fontSizeRegular,
                    fontWeight: AppTypography.fontWeightBold,
                    color: onSurface,
                    letterSpacing: -0.2,
                  ),
                ),
                if (description != null) ...[
                  const SizedBox(height: AppDimensions.spacingXSmall),
                  Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: AppTypography.fontSizeSmall,
                      fontWeight: AppTypography.fontWeightMedium,
                      color: onSurface.withValues(alpha: 0.5),
                      height: 1.45,
                    ),
                  ),
                ],
                if (action != null) ...[
                  const SizedBox(height: AppDimensions.spacingStandard),
                  action!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The glowing circular icon badge at the top of an [EmptyStateView]: a
/// wide, soft-edged glow sitting behind a smaller gradient-filled disc that
/// holds the icon, giving the illustration some depth instead of a flat
/// tinted circle.
class _IconBadge extends StatelessWidget {
  const _IconBadge({required this.icon, required this.color});

  final dynamic icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    const double glowSize = 84;
    const double badgeSize = 58;

    return SizedBox(
      width: glowSize,
      height: glowSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Soft ambient glow — a box-shadow "bloom" reads much softer than
          // a hard-edged tinted circle.
          Container(
            width: badgeSize - 8,
            height: badgeSize - 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withValues(alpha: 0.06),
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.18),
                  blurRadius: 24,
                  spreadRadius: 3,
                ),
              ],
            ),
          ),
          Container(
            width: badgeSize,
            height: badgeSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color.withValues(alpha: 0.16),
                  color.withValues(alpha: 0.05),
                ],
              ),
              border: Border.all(
                color: color.withValues(alpha: 0.16),
                width: 1.5,
              ),
            ),
            child: Center(
              child: icon is String
                  ? SvgPicture.asset(
                      icon,
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                      width: 22,
                      height: 22,
                    )
                  : Icon(icon, size: 24, color: color),
            ),
          ),
        ],
      ),
    );
  }
}

/// The primary call-to-action button offered from inside an empty state
/// (e.g. "Add New Person"). A solid gradient pill with an icon, matching
/// the app's other primary buttons so the empty state doesn't feel like a
/// dead end.
class EmptyStateActionButton extends StatelessWidget {
  const EmptyStateActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.gradientColors,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  /// Two-stop gradient for the button fill. Defaults to the theme's
  /// primary/secondary pair; pass a screen-specific pair (see
  /// [AppColors.accentIndigo]/[AppColors.accentIndigoDeep]) to match a
  /// differently-tinted empty state.
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = gradientColors ??
        [theme.colorScheme.primary, theme.colorScheme.secondary];

    return ZoomTapAnimation(
      onTap: () {
        HapticFeedback.mediumImpact();
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius:
              BorderRadius.circular(AppDimensions.borderRadiusMinLarge),
          boxShadow: [
            BoxShadow(
              color: colors.first.withValues(alpha: 0.3),
              blurRadius: AppDimensions.blurRadiusStandard,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 10),
            Text(
              label,
              style: GoogleFonts.dmSans(
                color: Colors.white,
                fontWeight: AppTypography.fontWeightBold,
                fontSize: AppTypography.fontSizeMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
