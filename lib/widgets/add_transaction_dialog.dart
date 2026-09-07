import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../core/models/transaction.dart';
import '../core/view_models/transaction_view_model.dart';
import '../core/view_models/theme_view_model.dart';
import '../core/view_models/person_view_model.dart';
import '../core/models/person_transaction.dart';
import '../core/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../core/const/app_colors.dart';
import '../core/const/app_dimensions.dart';
import '../core/const/app_typography.dart';
import '../core/const/app_assets.dart';
import '../core/utils/transaction_utils.dart';
import '../l10n/generated/app_localizations.dart';

class AddTransactionDialog extends StatefulWidget {
  final bool isIncome;
  final Transaction? existingTransaction;
  final PersonTransaction? existingPersonTransaction;
  final String? initialNote;
  final double? initialAmount;

  const AddTransactionDialog({
    super.key,
    required this.isIncome,
    this.existingTransaction,
    this.existingPersonTransaction,
    this.initialNote,
    this.initialAmount,
  });

  @override
  State<AddTransactionDialog> createState() => _AddTransactionDialogState();
}

class _AddTransactionDialogState extends State<AddTransactionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _amount = TextEditingController();
  final _note = TextEditingController();
  late String _category;
  late String _account;
  late DateTime _selectedDate;
  final List<String> _images = [];
  late FocusNode _amountFocusNode;
  bool _saveToPerson = false;
  String? _selectedPersonName;

  @override
  void initState() {
    super.initState();
    _amountFocusNode = FocusNode();
    final tx = widget.existingTransaction;
    final ctx = widget.existingPersonTransaction;
    _category = tx?.category ?? (widget.isIncome ? 'Salary' : 'Food');
    _account = tx?.account ?? 'Cash';
    _selectedDate = tx?.date ?? ctx?.date ?? DateTime.now();
    if (tx != null) {
      _amount.text = tx.amount.toString();
      _note.text = tx.note;
      _images.addAll(tx.imagePaths ?? []);
      _saveToPerson = false;
    } else if (ctx != null) {
      _amount.text = ctx.amount.toString();
      _note.text = ctx.note;
      _category = 'Other';
      _saveToPerson = true;
      _selectedPersonName = ctx.personName;
    } else {
      _note.text = widget.initialNote ?? '';
      _amount.text = widget.initialAmount?.abs().toStringAsFixed(2) ?? '';

      // Auto-detect if note refers to a person
      final initialNoteStr = widget.initialNote;
      if (initialNoteStr != null && initialNoteStr.isNotEmpty) {
        final pvm = context.read<PersonViewModel>();
        final matchingPerson = pvm.people.firstWhere(
          (p) =>
              p.name.toLowerCase() == initialNoteStr.toLowerCase() ||
              initialNoteStr.toLowerCase().contains(p.name.toLowerCase()),
          orElse: () => Person(name: ''),
        );
        if (matchingPerson.name.isNotEmpty) {
          _saveToPerson = true;
          _selectedPersonName = matchingPerson.name;
        }
      }
    }
  }

  @override
  void dispose() {
    _amountFocusNode.dispose();
    _amount.dispose();
    _note.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final amount = double.parse(_amount.text);
    final vm = context.read<TransactionViewModel>();
    final pvm = context.read<PersonViewModel>();

    if (_saveToPerson) {
      if (_selectedPersonName == null || _selectedPersonName!.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(AppLocalizations.of(context)!.pleaseSelectPerson),
          behavior: SnackBarBehavior.floating,
        ));
        return;
      }

      if (widget.existingPersonTransaction != null) {
        // Editing existing person transaction
        pvm.updatePersonTransaction(
          widget.existingPersonTransaction!,
          PersonTransaction(
            personName: _selectedPersonName!,
            amount: amount,
            note: _note.text,
            date: _selectedDate,
            isIncome: widget.isIncome,
          ),
        );
      } else {
        // Saving a new person transaction OR converting a normal transaction to a person transaction
        if (widget.existingTransaction != null) {
          vm.deleteTransaction(widget.existingTransaction!);
        }

        pvm.addPersonTransaction(
          PersonTransaction(
            personName: _selectedPersonName!,
            amount: amount,
            note: _note.text,
            date: _selectedDate,
            isIncome: widget.isIncome,
          ),
          _selectedPersonName!,
        );
      }
    } else {
      if (widget.existingTransaction != null) {
        // Editing existing normal transaction
        vm.updateTransaction(
          widget.existingTransaction!,
          Transaction(
            amount: amount,
            note: _note.text,
            date: _selectedDate,
            isIncome: widget.isIncome,
            category: _category,
            account: _account,
            imagePaths: _images,
          ),
        );
      } else {
        // Saving a new normal transaction OR converting a person transaction to a normal transaction
        if (widget.existingPersonTransaction != null) {
          pvm.deleteTransaction(widget.existingPersonTransaction!);
        }

        final tx = Transaction(
          amount: amount,
          note: _note.text,
          date: _selectedDate,
          isIncome: widget.isIncome,
          category: _category,
          account: _account,
          imagePaths: _images,
          originalText: widget.initialNote,
          source: widget.initialNote != null
              ? AppLocalizations.of(context)!.sourceManualAddHistory
              : null,
        );
        vm.addTransaction(tx);
        _syncPerson(tx, pvm);
      }
    }
    Navigator.pop(context);
  }

  void _syncPerson(Transaction tx, PersonViewModel pvm) {
    if (tx.note.isEmpty) return;
    for (final p in pvm.people) {
      if (tx.note.toLowerCase().contains(p.name.toLowerCase())) {
        pvm.addPersonTransaction(
            PersonTransaction(
              personName: p.name,
              amount: tx.amount,
              note: tx.note,
              date: tx.date,
              isIncome: tx.isIncome,
            ),
            p.name);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(AppLocalizations.of(context)!.linkedToRecord(p.name)),
          behavior: SnackBarBehavior.floating,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final tvm = context.watch<ThemeViewModel>();
    final isDark = tvm.isDarkMode;
    final cats = widget.isIncome ? tvm.incomeCategories : tvm.expenseCategories;
    final accs = tvm.accounts;

    if (!cats.contains(_category)) {
      _category = cats.isNotEmpty ? cats.first : 'Other';
    }
    if (!accs.contains(_account)) {
      _account = accs.isNotEmpty ? accs.first : 'Cash';
    }

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 550),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppDimensions.borderRadiusLarge)),
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Drag handle
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: theme.dividerColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    // Stylized Amount Header
                    GestureDetector(
                      // tap to enable show input for amount
                      onTap: () {
                        _amountFocusNode.requestFocus();
                        if (_amount.text == '0.00' || _amount.text == '0') {
                          _amount.text = '';
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppDimensions.paddingLarge,
                            horizontal: AppDimensions.paddingXLarge),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              (widget.isIncome
                                      ? AppColors.accentGreen
                                      : AppColors.accentRed)
                                  .withValues(alpha: isDark ? 0.15 : 0.08),
                              (widget.isIncome
                                      ? AppColors.accentGreen
                                      : AppColors.accentRed)
                                  .withValues(alpha: isDark ? 0.10 : 0.02),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusLarge),
                          border: Border.all(
                            color: (widget.isIncome
                                    ? AppColors.accentGreen
                                    : AppColors.accentRed)
                                .withValues(alpha: isDark ? 0.2 : 0.1),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.amount,
                              style: GoogleFonts.dmSans(
                                fontSize: AppTypography.fontSizeXSmall,
                                fontWeight: FontWeight.bold,
                                color: (widget.isIncome
                                        ? AppColors.accentGreen
                                        : AppColors.accentRed)
                                    .withValues(alpha: 0.6),
                                letterSpacing: 2,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Auto-shrinks as a matter of course: FittedBox
                            // scales the whole symbol+digits group down to
                            // whatever width the card actually has, instead
                            // of guessing a font size from character count.
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    tvm.currencySymbol,
                                    style: GoogleFonts.dmSans(
                                      fontSize: AppTypography.fontSizeXXLarge,
                                      fontWeight: AppTypography.fontWeightBlack,
                                      color: widget.isIncome
                                          ? AppColors.accentGreen
                                          : AppColors.accentRed,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  IntrinsicWidth(
                                    child: TextFormField(
                                      controller: _amount,
                                      focusNode: _amountFocusNode,
                                      keyboardType: TextInputType.number,
                                      onChanged: (val) {
                                        setState(() {});
                                      },
                                      style: GoogleFonts.bayon(
                                        fontSize:
                                            AppTypography.fontSizeGigantic + 10,
                                        color: widget.isIncome
                                            ? AppColors.accentGreen
                                            : AppColors.accentRed,
                                        letterSpacing: 0,
                                        height: 1,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: '0',
                                        hintStyle: GoogleFonts.bayon(
                                          color: (widget.isIncome
                                                  ? AppColors.accentGreen
                                                  : AppColors.accentRed)
                                              .withValues(alpha: 0.2),
                                        ),
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        filled: false,
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                      textAlign: TextAlign.start,
                                      validator: (v) => (v?.isEmpty ?? true)
                                          ? l10n.requiredField
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Quick category chips — the fastest way to pick a common
                    // one; the "Category" field below opens the full picker for
                    // everything else, so no separate heading is needed here.
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: cats.map((cat) {
                          final isSelected = _category == cat;
                          final color = TransactionUtils.getCategoryColor(cat);
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ZoomTapAnimation(
                              onTap: () {
                                HapticFeedback.selectionClick();
                                setState(() => _category = cat);
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 10),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? color.withValues(alpha: 0.15)
                                      : isDark
                                          ? Colors.white.withValues(alpha: 0.05)
                                          : Colors.black
                                              .withValues(alpha: 0.03),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: isSelected
                                        ? color.withValues(alpha: 0.4)
                                        : Colors.transparent,
                                    width: 1.5,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      TransactionUtils.getCategorySvg(cat),
                                      colorFilter: ColorFilter.mode(
                                          isSelected ? color : Colors.grey,
                                          BlendMode.srcIn),
                                      width: 16,
                                      height: 16,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      cat,
                                      style: GoogleFonts.dmSans(
                                        fontSize: 13,
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.w500,
                                        color: isSelected
                                            ? color
                                            : theme.colorScheme.onSurface
                                                .withValues(alpha: 0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Date & Category Pickers Row
                    Row(
                      children: [
                        Expanded(
                          child: _picker(
                              l10n.category,
                              _category,
                              cats,
                              (v) => setState(() => _category = v),
                              widget.isIncome ? 'Income' : 'Expense'),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _picker(l10n.account, _account, accs,
                              (v) => setState(() => _account = v), 'Account'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Date Picker
                    _picker(
                        l10n.date,
                        DateFormat('dd MMM, yyyy').format(_selectedDate),
                        [],
                        (v) {},
                        'Date'),

                    const SizedBox(height: 16),

                    // Save to Person Toggle Section
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(
                            AppDimensions.borderRadiusMinLarge),
                        border: Border.all(
                          color: theme.dividerColor.withValues(alpha: 0.1),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person_outline_rounded,
                                    color: theme.colorScheme.primary,
                                    size: 22,
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    l10n.saveToPerson,
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppTypography.fontSizeSmall + 1,
                                    ),
                                  ),
                                ],
                              ),
                              Switch(
                                value: _saveToPerson,
                                onChanged: (val) {
                                  HapticFeedback.lightImpact();
                                  setState(() {
                                    _saveToPerson = val;
                                    if (val && _selectedPersonName == null) {
                                      final pvm =
                                          context.read<PersonViewModel>();
                                      if (pvm.people.isNotEmpty) {
                                        _selectedPersonName =
                                            pvm.people.first.name;
                                      }
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                          if (_saveToPerson) ...[
                            const Divider(height: 16),
                            const SizedBox(height: 4),
                            Consumer<PersonViewModel>(
                              builder: (context, pvm, child) {
                                if (pvm.people.isEmpty) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      l10n.noPeopleCreateHint,
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                }

                                final peopleNames =
                                    pvm.people.map((p) => p.name).toList();
                                if (_selectedPersonName == null ||
                                    !peopleNames
                                        .contains(_selectedPersonName)) {
                                  _selectedPersonName = peopleNames.first;
                                }

                                return _picker(
                                  l10n.selectPersonLabel,
                                  _selectedPersonName!,
                                  peopleNames,
                                  (v) =>
                                      setState(() => _selectedPersonName = v),
                                  'Person',
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                          ],
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Note Input
                    TextFormField(
                      controller: _note,
                      maxLines: 2,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: AppTypography.fontSizeSmall + 1,
                      ),
                      decoration: InputDecoration(
                        labelText: l10n.note,
                        labelStyle: GoogleFonts.dmSans(
                          color: theme.textTheme.bodySmall?.color
                              ?.withValues(alpha: 0.5),
                        ),
                        floatingLabelStyle: GoogleFonts.dmSans(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            SvgAppIcons.noteIcon,
                            colorFilter: ColorFilter.mode(
                                theme.colorScheme.primary
                                    .withValues(alpha: 0.8),
                                BlendMode.srcIn),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        filled: true,
                        fillColor: theme.colorScheme.surface,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusMinLarge),
                          borderSide: BorderSide(
                              color: theme.dividerColor.withValues(alpha: 0.1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusMinLarge),
                          borderSide: BorderSide(
                              color: theme.colorScheme.primary, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    if (_images.isNotEmpty) ...[
                      _imageGrid(),
                      const SizedBox(height: 16),
                    ],

                    // Action Buttons
                    Row(
                      children: [
                        ZoomTapAnimation(
                          onTap: () async {
                            final img = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (img != null)
                              setState(() => _images.add(img.path));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary
                                  .withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: theme.colorScheme.primary
                                    .withValues(alpha: 0.2),
                              ),
                            ),
                            child: Icon(Icons.add_a_photo_rounded,
                                color: theme.colorScheme.primary),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: widget.isIncome
                                  ? AppColors.accentGreen
                                  : AppColors.accentRed,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.borderRadiusFull),
                              ),
                            ),
                            child: Text(
                              widget.existingTransaction != null
                                  ? l10n.updateTransactionButton
                                  : l10n.saveTransactionButton,
                              style: GoogleFonts.dmSans(
                                fontSize: AppTypography.fontSizeMedium,
                                fontWeight: AppTypography.fontWeightBlack,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _picker(String label, String val, List<String> items,
      ValueChanged<String> onDone, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: GoogleFonts.dmSans(
                fontSize: AppTypography.fontSizeXSmall, color: Colors.grey)),
        const SizedBox(height: 4),
        InkWell(
          onTap: () async {
            if (type == 'Date') {
              final date = await showDatePicker(
                context: context,
                initialDate: _selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              );
              if (date != null) setState(() => _selectedDate = date);
            } else if (type == 'Category') {
              _showCategoryGrid(context, items, val, onDone);
            } else {
              _showManageItems(context, type, items, val, onDone);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withAlpha(100)),
              borderRadius:
                  BorderRadius.circular(AppDimensions.borderRadiusSmall),
            ),
            child: Row(
              children: [
                if (type == 'Date') ...[
                  const Icon(Icons.calendar_today,
                      size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                ] else if (type == 'Income' || type == 'Expense') ...[
                  SvgPicture.asset(TransactionUtils.getCategorySvg(val),
                      colorFilter: ColorFilter.mode(
                          TransactionUtils.getCategoryColor(val),
                          BlendMode.srcIn),
                      width: 18,
                      height: 18),
                  const SizedBox(width: 8),
                ] else if (type == 'Person') ...[
                  const Icon(Icons.person_outline_rounded,
                      size: 18, color: Colors.grey),
                  const SizedBox(width: 8),
                ],
                Expanded(child: Text(val, style: GoogleFonts.dmSans())),
                if (type != 'Date') const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showCategoryGrid(BuildContext context, List<String> items, String val,
      ValueChanged<String> onDone) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final isDark = theme.brightness == Brightness.dark;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: theme.dividerColor.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Text(
              l10n.selectCategoryTitle,
              style: GoogleFonts.dmSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.9,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final category = items[index];
                  final isSelected = category == val;
                  final color = TransactionUtils.getCategoryColor(category);
                  final iconSvg = TransactionUtils.getCategorySvg(category);

                  return ZoomTapAnimation(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      onDone(category);
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? color.withValues(alpha: 0.1)
                            : isDark
                                ? Colors.white.withValues(alpha: 0.05)
                                : Colors.black.withValues(alpha: 0.03),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected
                              ? color.withValues(alpha: 0.5)
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: color.withValues(alpha: 0.2),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              iconSvg,
                              colorFilter:
                                  ColorFilter.mode(color, BlendMode.srcIn),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category,
                            style: GoogleFonts.dmSans(
                              fontSize: 12,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected ? color : null,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Localized "Select {type}" title for the manage-items sheet. [type] is
  /// the internal identifier ('Account' / 'Person') passed by [_picker].
  String _selectItemsTitle(AppLocalizations l10n, String type) {
    return l10n
        .selectItemTitle(type == 'Person' ? l10n.personSingular : l10n.account);
  }

  void _showManageItems(BuildContext context, String type, List<String> items,
      String selected, ValueChanged<String> onDone) {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (c) => StatefulBuilder(builder: (c, setStateSheet) {
        final theme = Theme.of(c);
        final isDark = theme.brightness == Brightness.dark;
        final tvm = c.watch<ThemeViewModel>();
        final currentItems = (type == 'Income')
            ? tvm.incomeCategories
            : (type == 'Expense')
                ? tvm.expenseCategories
                : (type == 'Person')
                    ? items
                    : tvm.accounts;

        return Container(
          decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppDimensions.borderRadiusXLarge))),
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          height: MediaQuery.of(c).size.height * 0.55,
          child: Column(
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: theme.dividerColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Text(_selectItemsTitle(l10n, type),
                  style: GoogleFonts.dmSans(
                      fontSize: AppTypography.fontSizeLarge - 2,
                      fontWeight: AppTypography.fontWeightBold)),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: currentItems.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (c, i) {
                    final item = currentItems[i];
                    final isSelected = item == selected;
                    final categoryColor =
                        (type == 'Income' || type == 'Expense')
                            ? TransactionUtils.getCategoryColor(item)
                            : theme.colorScheme.primary;

                    return ZoomTapAnimation(
                      onTap: () {
                        HapticFeedback.selectionClick();
                        onDone(item);
                        Navigator.pop(c);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? categoryColor.withValues(alpha: 0.1)
                              : isDark
                                  ? Colors.white.withValues(alpha: 0.04)
                                  : Colors.black.withValues(alpha: 0.02),
                          borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusMinLarge),
                          border: Border.all(
                            color: isSelected
                                ? categoryColor.withValues(alpha: 0.35)
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            if (type == 'Income' || type == 'Expense')
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: categoryColor.withValues(alpha: 0.12),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  TransactionUtils.getCategorySvg(item),
                                  colorFilter: ColorFilter.mode(
                                      categoryColor, BlendMode.srcIn),
                                  width: 18,
                                  height: 18,
                                ),
                              )
                            else if (type == 'Person')
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: theme.colorScheme.primary
                                    .withValues(alpha: 0.12),
                                child: Icon(Icons.person_rounded,
                                    size: 18, color: theme.colorScheme.primary),
                              )
                            else
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary
                                      .withValues(alpha: 0.12),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                    Icons.account_balance_wallet_rounded,
                                    size: 18,
                                    color: theme.colorScheme.primary),
                              ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(item,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.w500,
                                    color: isSelected
                                        ? categoryColor
                                        : theme.colorScheme.onSurface,
                                  )),
                            ),
                            if (isSelected)
                              Icon(Icons.check_circle_rounded,
                                  color: categoryColor, size: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _imageGrid() {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _images.length,
        itemBuilder: (c, i) => Stack(children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            width: 90,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(AppDimensions.borderRadiusMedium),
              image: DecorationImage(
                  image: FileImage(File(_images[i])), fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: 4,
              right: 16,
              child: GestureDetector(
                onTap: () => setState(() => _images.removeAt(i)),
                child: const CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.accentRed,
                    child: Icon(Icons.close,
                        size: AppTypography.fontSizeXSmall,
                        color: Colors.white)),
              )),
        ]),
      ),
    );
  }
}
