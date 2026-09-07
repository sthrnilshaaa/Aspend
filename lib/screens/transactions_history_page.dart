import 'dart:ui';
import 'package:aspends_tracker/core/utils/blur_utils.dart';
import 'package:aspends_tracker/core/models/transaction.dart';

import '../../widgets/history_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/view_models/transaction_view_model.dart';
import '../core/view_models/theme_view_model.dart';
import '../../widgets/range_selector.dart';
import '../../widgets/transaction_tile.dart';
import '../../widgets/glass_app_bar.dart';
import '../../widgets/empty_state_view.dart';
import '../../widgets/empty_state_illustrations.dart';
import '../core/utils/transaction_utils.dart';
import '../core/const/app_dimensions.dart';
import '../core/const/app_typography.dart';
import '../l10n/generated/app_localizations.dart';

class TransactionsHistoryPage extends StatefulWidget {
  const TransactionsHistoryPage({super.key});

  @override
  State<TransactionsHistoryPage> createState() =>
      _TransactionsHistoryPageState();
}

class _TransactionsHistoryPageState extends State<TransactionsHistoryPage> {
  bool _isSelectionMode = false;
  final Set<Transaction> _selectedTransactions = {};

  void _toggleSelection(Transaction tx) {
    setState(() {
      if (_selectedTransactions.contains(tx)) {
        _selectedTransactions.remove(tx);
        if (_selectedTransactions.isEmpty) _isSelectionMode = false;
      } else {
        _selectedTransactions.add(tx);
      }
    });
    HapticFeedback.lightImpact();
  }

  void _enterSelectionMode(Transaction tx) {
    setState(() {
      _isSelectionMode = true;
      _selectedTransactions.add(tx);
    });
    HapticFeedback.mediumImpact();
  }

  void _exitSelectionMode() {
    setState(() {
      _isSelectionMode = false;
      _selectedTransactions.clear();
    });
  }

  Future<void> _deleteSelected() async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
            l10n.deleteTransactionsCountTitle(_selectedTransactions.length)),
        content: Text(l10n.actionCannotBeUndone),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l10n.cancel)),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.delete, style: const TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final txsToDelete = _selectedTransactions.toList();
      _exitSelectionMode();
      await context
          .read<TransactionViewModel>()
          .deleteMultipleTransactions(txsToDelete);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(l10n.deletedTransactionsCount(txsToDelete.length))),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final viewModel = context.watch<TransactionViewModel>();

    final grouped = viewModel.groupedFilteredTransactions;
    final hasTransactions = grouped.isNotEmpty;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GlassAppBar(
            title: _isSelectionMode
                ? l10n.selectedCount(_selectedTransactions.length)
                : l10n.transactionHistoryTitle,
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                HapticFeedback.lightImpact();
                if (_isSelectionMode) {
                  _exitSelectionMode();
                } else {
                  Navigator.pop(context);
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppDimensions.paddingSmall +
                        AppDimensions.paddingSmall),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: theme.dividerColor.withValues(alpha: 0.1),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        _isSelectionMode ? Icons.close : Icons.arrow_back,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              if (_isSelectionMode)
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    icon: const Icon(Icons.delete_outline, color: Colors.red),
                    onPressed: _deleteSelected,
                  ),
                ),
            ],
          ),
          SliverToBoxAdapter(
            child: HistorySearchBar(
              searchQuery: context.select<TransactionViewModel, String?>(
                  (vm) => vm.searchQuery),
              isDark:
                  context.select<ThemeViewModel, bool>((vm) => vm.isDarkMode),
              onSearchChanged: (val) =>
                  context.read<TransactionViewModel>().setSearchQuery(val),
              onClear: () =>
                  context.read<TransactionViewModel>().setSearchQuery(null),
              onFilterTap: () {
                HapticFeedback.mediumImpact();
                _showSortDialog(context);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: _buildRangeSelector(context),
          ),
          if (!hasTransactions)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyStateView(
                illustration:
                    ReceiptEmptyIllustration(color: theme.colorScheme.primary),
                title: l10n.noTransactions,
              ),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.paddingStandard),
              sliver: SliverList.builder(
                itemCount: grouped.entries.length,
                itemBuilder: (context, index) {
                  final entry = grouped.entries.elementAt(index);
                  final dateKey = entry.key;
                  final dayTxs = entry.value;

                  final dateKeyStr =
                      "${dateKey.year}-${dateKey.month.toString().padLeft(2, '0')}-${dateKey.day.toString().padLeft(2, '0')}";
                  final relativeDate =
                      TransactionUtils.formatRelativeDate(dateKeyStr);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 8),
                        child: Text(
                          relativeDate,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w800,
                            color: theme.colorScheme.primary
                                .withValues(alpha: 0.8),
                            fontSize: AppTypography.fontSizeSmall,
                          ),
                        ),
                      ),
                      // Inner column is fine here since it only holds a single day's transactions (usually small)
                      // and changing it to nested slivers is overly complex for a date-grouped list.
                      ...dayTxs.asMap().entries.map((txEntry) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: TransactionTile(
                              transaction: txEntry.value,
                              index: txEntry.key,
                              isSelectionMode: _isSelectionMode,
                              isSelected:
                                  _selectedTransactions.contains(txEntry.value),
                              onSelectionToggled: () =>
                                  _toggleSelection(txEntry.value),
                              onLongPress: () =>
                                  _enterSelectionMode(txEntry.value),
                            ),
                          )),
                    ],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildRangeSelector(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final selectedRange =
        context.select<TransactionViewModel, String>((vm) => vm.selectedRange);
    return RangeSelector(
      ranges: const ['All', 'Day', 'Week', 'Month', 'Year'],
      selectedRange: selectedRange,
      labels: {
        'All': l10n.rangeAll,
        'Day': l10n.rangeDay,
        'Week': l10n.rangeWeek,
        'Month': l10n.rangeMonth,
        'Year': l10n.rangeYear,
      },
      onRangeSelected: (range) {
        context.read<TransactionViewModel>().setSelectedRange(range);
      },
    );
  }

  void _showSortDialog(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.3),
      builder: (context) => ConditionalBackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        isRouteBarrier: true,
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
                  context, l10n.sortByDateRecent, SortOption.dateNewest),
              _buildSortOption(
                  context, l10n.sortByDateOldest, SortOption.dateOldest),
              _buildSortOption(
                  context, l10n.sortByAmountHighest, SortOption.amountHighest),
              _buildSortOption(
                  context, l10n.sortByAmountLowest, SortOption.amountLowest),
              _buildSortOption(context, l10n.category, SortOption.category),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSortOption(
      BuildContext context, String title, SortOption option) {
    final theme = Theme.of(context);
    final vm = context.read<TransactionViewModel>();
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
}
