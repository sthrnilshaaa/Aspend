import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import '../../core/utils/responsive_utils.dart';
import '../../core/view_models/transaction_view_model.dart';
import '../../core/const/app_dimensions.dart';
import '../../core/const/tour_style.dart';
import '../../widgets/balance_card.dart';
import '../../l10n/generated/app_localizations.dart';
import './home_budget_progress.dart';

class HomeBalanceSection extends StatelessWidget {
  final TransactionViewModel viewModel;

  /// When set, wraps the balance card in a pointer-hint [Showcase] for the
  /// Home tab's first-run tour — covers both the tap-for-details gesture and
  /// the long-press-to-edit gesture in one stop.
  final GlobalKey? showcaseKey;

  const HomeBalanceSection({
    super.key,
    required this.viewModel,
    this.showcaseKey,
  });

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = !ResponsiveUtils.isMobile(context);
    final balanceCard = BalanceCard(
      balance: viewModel.totalBalance,
      onBalanceUpdate: (newBalance) => viewModel.updateBalance(newBalance),
    );
    final l10n = AppLocalizations.of(context)!;
    final showcasedBalanceCard = showcaseKey == null
        ? balanceCard
        : Showcase(
            key: showcaseKey!,
            title: l10n.tourBalanceCardTitle,
            description: l10n.tourBalanceCardDesc,
            titleTextStyle: TourStyle.title(),
            descTextStyle: TourStyle.description(),
            targetBorderRadius:
                BorderRadius.circular(AppDimensions.borderRadiusLarge),
            child: balanceCard,
          );

    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(
            height: AppDimensions.paddingSmall,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingStandard,
            ),
            child: isLargeScreen
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: showcasedBalanceCard,
                      ),
                      Expanded(
                        flex: 1,
                        child: HomeBudgetProgress(
                          viewModel: viewModel,
                          isCompact: true,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      showcasedBalanceCard,
                      HomeBudgetProgress(
                        viewModel: viewModel,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
