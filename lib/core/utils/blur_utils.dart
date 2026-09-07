import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aspends_tracker/core/view_models/theme_view_model.dart';

class BlurUtils {
  static const double blurSigma = 5.0;

  static ImageFilter get standardBlur =>
      ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma);

  static Future<T?> showBlurredDialog<T>({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    Color? barrierColor,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor ?? Colors.black.withValues(alpha: 0.3),
      builder: (context) => ConditionalBackdropFilter(
        filter: standardBlur,
        isRouteBarrier: true,
        child: child,
      ),
    );
  }

  static Future<T?> showBlurredBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool isScrollControlled = true,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    Color? barrierColor,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: elevation,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
      clipBehavior: clipBehavior,
      barrierColor: barrierColor ?? Colors.black.withValues(alpha: 0.3),
      builder: (context) => ConditionalBackdropFilter(
        filter: standardBlur,
        isRouteBarrier: true,
        child: child,
      ),
    );
  }
}

/// Drop-in replacement for [BackdropFilter] that honours the user's
/// "Glass Blur Effects" setting (see [ThemeViewModel.enableBlurEffects]).
///
/// When the setting is enabled this behaves exactly like [BackdropFilter].
/// When disabled there are two behaviours, chosen by [isRouteBarrier]:
///
/// * `false` (default) — this instance decorates a bounded "glass" surface
///   (a card, app bar, nav bar, button, …) whose own decoration is
///   semi-transparent and relies on the blur to hide whatever sits behind
///   it. Skipping the filter alone would leave it looking see-through, so
///   [child] is instead painted over a solid, theme-matched backdrop (the
///   app's default background colour) sized to match the surface, so it
///   reads as a normal opaque element.
/// * `true` — this instance is the outer wrapper passed straight to a
///   `showDialog`/`showModalBottomSheet` `builder`, meant to blur the
///   *entire* screen behind the popup. That builder is laid out at the
///   full route size, so painting a solid backdrop there (as above) would
///   cover the whole screen behind the dialog in an opaque block instead
///   of leaving it dimmed-but-visible through the modal barrier. With blur
///   off this should simply do nothing and hand back [child] unchanged,
///   letting the route's own (semi-transparent) barrier color show through
///   normally, exactly like an ordinary, non-glass dialog.
class ConditionalBackdropFilter extends StatelessWidget {
  const ConditionalBackdropFilter({
    super.key,
    required this.filter,
    required this.child,
    this.blendMode = BlendMode.srcOver,
    this.isRouteBarrier = false,
  });

  final ImageFilter filter;
  final Widget child;
  final BlendMode blendMode;
  final bool isRouteBarrier;

  @override
  Widget build(BuildContext context) {
    final enableBlurEffects =
        context.select<ThemeViewModel, bool>((vm) => vm.enableBlurEffects);
    if (!enableBlurEffects) {
      if (isRouteBarrier) {
        return child;
      }
      return DecoratedBox(
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: child,
      );
    }
    return BackdropFilter(
      filter: filter,
      blendMode: blendMode,
      child: child,
    );
  }
}
