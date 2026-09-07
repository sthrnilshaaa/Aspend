import 'dart:ui';
import 'package:aspends_tracker/core/utils/blur_utils.dart';
import 'package:flutter/material.dart';
import '../core/const/app_colors.dart';
import '../l10n/generated/app_localizations.dart';

class FloatingActionBar extends StatelessWidget {
  final VoidCallback onSettle;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const FloatingActionBar({
    super.key,
    required this.onSettle,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🟢 Settle Balance Pill Button
          _glassContainer(
            color: AppColors.accentGreen,
            child: InkWell(
              onTap: onSettle,
              borderRadius: BorderRadius.circular(40),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.account_balance_wallet_outlined,
                      color: AppColors.accentGreen, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    l10n.settleBalance,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.accentGreen,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 11),

          // 🔴 Minus Button
          _circleButton(
            icon: Icons.remove,
            color: AppColors.accentRed,
            onTap: onMinus,
          ),

          const SizedBox(width: 11),

          // 🟢 Plus Button
          _circleButton(
            icon: Icons.add,
            color: AppColors.accentGreen,
            onTap: onPlus,
          ),
        ],
      ),
    );
  }

  // Glassmorphism container
  Widget _glassContainer({
    required Widget child,
    required Color color,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 65,
          width: 215,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color.withValues(alpha: 0.15),
            border: Border.all(
              color: color.withValues(alpha: 0.5),
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  // Circular glass button
  Widget _circleButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              shape: BoxShape.circle,
              border: Border.all(
                color: color.withValues(alpha: 0.5),
              ),
            ),
            child: Icon(icon, color: color),
          ),
        ),
      ),
    );
  }
}
