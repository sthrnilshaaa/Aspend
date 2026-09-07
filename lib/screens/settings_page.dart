import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:local_auth/local_auth.dart';
import '../core/view_models/theme_view_model.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aspends_tracker/l10n/generated/app_localizations.dart';
import 'package:hive/hive.dart';
//import 'dart:io';

import '../core/services/backup_service.dart';
import '../core/view_models/transaction_view_model.dart';
import '../core/view_models/person_view_model.dart';
import '../core/services/pdf_service.dart';
import '../core/const/app_typography.dart';
import '../core/services/transaction_detection_service.dart';
import '../core/services/native_bridge.dart';
import '../core/services/tour_service.dart';
import '../core/utils/transaction_parser.dart';
import '../core/utils/responsive_utils.dart';
import '../core/utils/error_handler.dart';
import 'detection_history_page.dart';
import 'about_page.dart';
import '../../widgets/glass_app_bar.dart';
import '../../widgets/settings_widgets.dart';
import '../../widgets/monitoring_setup_dialog.dart';
import '../core/utils/blur_utils.dart';
import '../core/utils/transaction_utils.dart';
import '../core/const/app_constants.dart';
import '../core/const/app_currencies.dart';
import '../core/const/app_dimensions.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _appLockEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadAppLockSetting();
  }

  Future<void> _loadAppLockSetting() async {
    final box = await Hive.openBox(AppConstants.settingsBox);
    if (!mounted) return;
    setState(() {
      _appLockEnabled = box.get('appLockEnabled', defaultValue: false);
    });
  }

  Future<void> _setAppLockEnabled(bool enabled) async {
    final l10n = AppLocalizations.of(context)!;
    try {
      if (enabled) {
        final localAuth = LocalAuthentication();
        final canCheckBiometrics = await localAuth.canCheckBiometrics;
        final canCheckDeviceSupport = await localAuth.isDeviceSupported();

        if (!canCheckDeviceSupport) {
          if (!mounted) return;
          ErrorHandler.showErrorSnackBar(context, l10n.biometricNotSupported);
          return;
        }

        if (!canCheckBiometrics) {
          if (!mounted) return;
          ErrorHandler.showErrorSnackBar(context, l10n.noBiometricMethods);
          return;
        }

        final didAuthenticate = await localAuth.authenticate(
          localizedReason: l10n.authenticateReason,
          biometricOnly: false,
          persistAcrossBackgrounding: true,
        );

        if (!didAuthenticate) {
          if (!mounted) return;
          ErrorHandler.showErrorSnackBar(
              context, l10n.authFailedAppLockNotEnabled);
          return;
        }
      }

      final box = await Hive.openBox(AppConstants.settingsBox);
      await box.put('appLockEnabled', enabled);
      if (!mounted) return;
      setState(() {
        _appLockEnabled = enabled;
      });

      if (!mounted) return;
      ErrorHandler.showSuccessSnackBar(context,
          enabled ? l10n.appLockEnabledSuccess : l10n.appLockDisabledSuccess);
    } catch (e) {
      if (!mounted) return;
      ErrorHandler.handleError(context, e,
          customMessage: enabled
              ? l10n.failedToEnableAppLock
              : l10n.failedToDisableAppLock);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();
    final theme = Theme.of(context);
    final isDark = themeViewModel.isDarkMode;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: CustomScrollView(
        //controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          GlassAppBar(
            title: l10n.settings,
            centerTitle: true,
          ),

          // Settings Content
          SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Padding(
                  padding: ResponsiveUtils.getResponsiveEdgeInsets(context,
                      horizontal: 16, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Theme Section
                      TitledSection(
                        title: l10n.appearance,
                        icon: Icons.palette,
                        children: [
                          _buildThemeCard(context, isDark),
                          const SizedBox(height: 12),
                          _buildLanguagePicker(context),
                          const SizedBox(height: 12),
                          _buildCurrencyPicker(context),
                          const SizedBox(height: 12),
                          _buildBlurEffectsToggle(context),
                        ],
                      ),
                      const SizedBox(height: 24),

                      TitledSection(
                        title: l10n.security,
                        icon: Icons.security,
                        children: [
                          _buildAppLockSection(context),
                          _buildUpiSettingsTile(context),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Auto Detection Section
                      TitledSection(
                        title: l10n.autoDetection,
                        icon: Icons.auto_awesome,
                        children: [
                          _buildAutoDetectionSection(context),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Backup & Export Section
                      TitledSection(
                        title: l10n.backupExport,
                        icon: Icons.backup,
                        children: [
                          _buildBackupSection(context, isDark),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Data Management Section
                      TitledSection(
                        title: l10n.dataManagement,
                        icon: Icons.storage,
                        children: [
                          _buildDataManagementSection(context, isDark),
                        ],
                      ),
                      const SizedBox(height: 24),

                      TitledSection(
                        title: l10n.budgetingBalance,
                        icon: Icons.wallet_membership,
                        children: [
                          _buildBudgetSection(context),
                          const SizedBox(height: 12),
                          _buildBalanceCalculationTile(context),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Custom Dropdown Items Section
                      TitledSection(
                        title: l10n.customDropdowns,
                        icon: Icons.list_alt,
                        children: [
                          _buildCustomOptionsSection(context),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // App Info Section
                      TitledSection(
                        title: l10n.appInformation,
                        icon: Icons.info,
                        children: [
                          _buildAppInfoSection(context, isDark),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeCard(BuildContext context, bool isDark) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.palette, size: 24, color: theme.colorScheme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.theme,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        l10n.chooseTheme,
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildThemeSegmentedControl(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguagePicker(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;

    String languageName = l10n.systemDefault;
    if (themeViewModel.locale?.languageCode == 'en') languageName = 'English';
    if (themeViewModel.locale?.languageCode == 'hi') languageName = 'हिन्दी';
    if (themeViewModel.locale?.languageCode == 'es') languageName = 'Español';
    if (themeViewModel.locale?.languageCode == 'fr') languageName = 'Français';
    if (themeViewModel.locale?.languageCode == 'de') languageName = 'Deutsch';
    if (themeViewModel.locale?.languageCode == 'ja') languageName = '日本語';
    if (themeViewModel.locale?.languageCode == 'zh') languageName = '中文';
    if (themeViewModel.locale?.languageCode == 'ar') languageName = 'العربية';
    if (themeViewModel.locale?.languageCode == 'pt') languageName = 'Português';
    if (themeViewModel.locale?.languageCode == 'ru') languageName = 'Русский';

    return SettingTile(
      icon: Icons.language_rounded,
      title: l10n.language,
      subtitle: languageName,
      onTap: () {
        _showLanguageDialog(context);
      },
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final themeViewModel = context.read<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    final primary = Theme.of(context).colorScheme.primary;

    final List<Map<String, String>> langs = [
      {'code': 'en', 'name': 'English'},
      {'code': 'hi', 'name': 'हिन्दी'},
      {'code': 'es', 'name': 'Español'},
      {'code': 'fr', 'name': 'Français'},
      {'code': 'de', 'name': 'Deutsch'},
      {'code': 'ja', 'name': '日本語'},
      {'code': 'zh', 'name': '中文'},
      {'code': 'ar', 'name': 'العربية'},
      {'code': 'pt', 'name': 'Português'},
      {'code': 'ru', 'name': 'Русский'},
    ];

    BlurUtils.showBlurredDialog(
      context: context,
      child: AlertDialog(
        title: Text(l10n.language),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(l10n.systemDefault),
                trailing: themeViewModel.locale == null
                    ? Icon(Icons.check, color: primary)
                    : null,
                onTap: () {
                  themeViewModel.setLocale(null);
                  Navigator.pop(context);
                },
              ),
              ...langs.map((l) => ListTile(
                    title: Text(l['name']!),
                    trailing: themeViewModel.locale?.languageCode == l['code']
                        ? Icon(Icons.check, color: primary)
                        : null,
                    onTap: () {
                      themeViewModel.setLocale(Locale(l['code']!, ''));
                      Navigator.pop(context);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurrencyPicker(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    final currency = themeViewModel.currency;

    final subtitle = themeViewModel.currencyAutoDetect
        ? '${currency.flag} ${currency.code} — ${currency.name} (${l10n.autoDetectCurrency})'
        : '${currency.flag} ${currency.code} — ${currency.name}';

    return SettingTile(
      icon: Icons.currency_exchange,
      title: l10n.currency,
      subtitle: subtitle,
      onTap: () => _showCurrencyPicker(context),
    );
  }

  Widget _buildBlurEffectsToggle(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;

    return SettingTile(
      icon: Icons.blur_on,
      title: l10n.glassBlurEffectsTitle,
      subtitle: l10n.glassBlurEffectsSubtitle,
      onTap: null,
      trailing: Switch(
        value: themeViewModel.enableBlurEffects,
        onChanged: (value) {
          HapticFeedback.lightImpact();
          themeViewModel.setEnableBlurEffects(value);
        },
      ),
    );
  }

  void _showCurrencyPicker(BuildContext context) {
    final themeViewModel = context.read<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    String query = '';

    BlurUtils.showBlurredBottomSheet(
      context: context,
      child: StatefulBuilder(
        builder: (c, setSheetState) {
          final theme = Theme.of(c);
          final normalizedQuery = query.trim().toLowerCase();
          final filtered = normalizedQuery.isEmpty
              ? AppCurrencies.all
              : AppCurrencies.all
                  .where((currency) =>
                      currency.code.toLowerCase().contains(normalizedQuery) ||
                      currency.name.toLowerCase().contains(normalizedQuery))
                  .toList();
          final popular =
              AppCurrencies.popularCodes.map(AppCurrencies.byCode).toList();

          return DraggableScrollableSheet(
            initialChildSize: 0.8,
            minChildSize: 0.5,
            maxChildSize: 0.92,
            expand: false,
            builder: (sheetContext, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppDimensions.borderRadiusLarge)),
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                  bottom: MediaQuery.of(sheetContext).viewInsets.bottom + 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Text(
                      l10n.selectCurrency,
                      style: GoogleFonts.dmSans(
                          fontSize: AppTypography.fontSizeLarge - 2,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.primary.withValues(alpha: 0.06),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          l10n.autoDetectCurrency,
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        subtitle: Text(
                          l10n.autoDetectCurrencyDesc,
                          style: GoogleFonts.dmSans(fontSize: 12),
                        ),
                        value: themeViewModel.currencyAutoDetect,
                        onChanged: (value) {
                          themeViewModel.setCurrencyAutoDetect(value);
                          setSheetState(() {});
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      decoration: InputDecoration(
                        hintText: l10n.searchCurrency,
                        prefixIcon: const Icon(Icons.search, size: 20),
                        isDense: true,
                      ),
                      onChanged: (value) => setSheetState(() => query = value),
                    ),
                    const SizedBox(height: 14),
                    if (normalizedQuery.isEmpty) ...[
                      Text(
                        l10n.popularCurrencies.toUpperCase(),
                        style: GoogleFonts.dmSans(
                          fontSize: AppTypography.fontSizeXSmall,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: theme.colorScheme.onSurface
                              .withValues(alpha: 0.5),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: popular.map((currency) {
                          final selected = !themeViewModel.currencyAutoDetect &&
                              themeViewModel.currencyCode == currency.code;
                          return ChoiceChip(
                            label: Text('${currency.flag} ${currency.code}'),
                            selected: selected,
                            onSelected: (_) {
                              themeViewModel.setCurrency(currency);
                              Navigator.pop(c);
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        l10n.allCurrencies.toUpperCase(),
                        style: GoogleFonts.dmSans(
                          fontSize: AppTypography.fontSizeXSmall,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          color: theme.colorScheme.onSurface
                              .withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                    Expanded(
                      child: filtered.isEmpty
                          ? Center(
                              child: Text(
                                l10n.noCurrencyFound,
                                style: GoogleFonts.dmSans(
                                    color: theme.colorScheme.onSurface
                                        .withValues(alpha: 0.6)),
                              ),
                            )
                          : ListView.builder(
                              controller: scrollController,
                              itemCount: filtered.length,
                              itemBuilder: (context, index) {
                                final currency = filtered[index];
                                final selected =
                                    !themeViewModel.currencyAutoDetect &&
                                        themeViewModel.currencyCode ==
                                            currency.code;
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Text(
                                    currency.flag,
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                  title: Text(
                                    '${currency.name} (${currency.code})',
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  subtitle: Text(currency.symbol),
                                  trailing: selected
                                      ? Icon(Icons.check,
                                          color: theme.colorScheme.primary)
                                      : null,
                                  onTap: () {
                                    themeViewModel.setCurrency(currency);
                                    Navigator.pop(c);
                                  },
                                );
                              },
                            ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildThemeSegmentedControl(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          _buildThemeOption(context, ThemeMode.system,
              Icons.settings_suggest_rounded, l10n.systemDefault),
          _buildThemeOption(context, ThemeMode.light, Icons.light_mode_rounded,
              l10n.lightMode),
          _buildThemeOption(
              context, ThemeMode.dark, Icons.dark_mode_rounded, l10n.darkMode),
        ],
      ),
    );
  }

  Widget _buildThemeOption(
      BuildContext context, ThemeMode mode, IconData icon, String label) {
    final viewModel = context.watch<ThemeViewModel>();
    final isSelected = viewModel.themeMode == mode;
    final theme = Theme.of(context);

    return Expanded(
      child: GestureDetector(
        onTap: () {
          HapticFeedback.mediumImpact();
          viewModel.setThemeMode(mode);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? theme.colorScheme.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: theme.colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ]
                : [],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: isSelected
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurfaceVariant,
                size: 20,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdaptiveColorSwitch(BuildContext context) {
    final viewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.color_lens, color: Colors.teal.shade600, size: 24),
            const SizedBox(width: 12),
            Text(
              l10n.adaptiveColor,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Switch(
          value: viewModel.useAdaptiveColor,
          onChanged: (value) {
            HapticFeedback.lightImpact();
            viewModel.setUseAdaptiveColor(value);
          },
        ),
      ],
    );
  }

  Widget _buildColorPickerTile(BuildContext context) {
    final viewModel = context.watch<ThemeViewModel>();
    final currentColor = viewModel.customSeedColor ?? Colors.green;
    final l10n = AppLocalizations.of(context)!;
    return SettingTile(
      icon: Icons.color_lens,
      title: l10n.appColor,
      subtitle: l10n.selectColor,
      onTap: () async {
        Color selectedColor = currentColor;
        BlurUtils.showBlurredDialog(
          context: context,
          child: AlertDialog(
            title: Text(l10n.pickAppColor),
            content: SingleChildScrollView(
              child: BlockPicker(
                pickerColor: selectedColor,
                onColorChanged: (color) {
                  selectedColor = color;
                },
              ),
            ),
            actions: [
              TextButton(
                child: Text(l10n.reset),
                onPressed: () {
                  viewModel.setCustomSeedColor(null);
                  Navigator.of(context).pop();
                  _showSnackBar(context, l10n.appColorResetDefault);
                },
              ),
              TextButton(
                child: Text(l10n.cancel),
                onPressed: () => Navigator.of(context).pop(),
              ),
              ElevatedButton(
                child: Text(l10n.selectAction),
                onPressed: () {
                  viewModel.setCustomSeedColor(selectedColor);
                  Navigator.of(context).pop();
                  // Removed snackbar as it might trigger lint and is redundant with the UI update
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAppLockSection(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingTile(
      icon: Icons.lock,
      title: l10n.appLock,
      subtitle: l10n.appLockDesc,
      trailing: Switch(
        value: _appLockEnabled,
        onChanged: (value) async {
          final localAuth = LocalAuthentication();
          try {
            if (value) {
              final canCheck = await localAuth.canCheckBiometrics ||
                  await localAuth.isDeviceSupported();
              if (!mounted) return;
              if (!canCheck) {
                _showSnackBar(context, l10n.deviceNotSupportBiometricsOrAuth);
                return;
              }
              final didAuthenticate = await localAuth.authenticate(
                localizedReason: l10n.authenticateReason,
                biometricOnly: false,
                persistAcrossBackgrounding: true,
              );
              if (!mounted) return;
              if (!didAuthenticate) {
                _showSnackBar(context, l10n.authFailedAppLockNotEnabled);
                return;
              }
            }
            await _setAppLockEnabled(value);
            if (!mounted) return;
            _showSnackBar(context,
                value ? l10n.appLockEnabledDot : l10n.appLockDisabledDot);
          } catch (e) {
            if (!mounted) return;
            _showSnackBar(context, l10n.errorWithDetails(e.toString()));
          }
        },
      ),
    );
  }

  Widget _buildUpiSettingsTile(BuildContext context) {
    final viewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SettingTile(
          icon: Icons.qr_code_2_rounded,
          title: l10n.upiId,
          subtitle: viewModel.upiId ?? l10n.upiIdDesc,
          onTap: () => _showUpiInputDialog(context, l10n.upiId, viewModel.upiId,
              (val) => viewModel.setUpiId(val)),
        ),
        SettingTile(
          icon: Icons.person_pin_outlined,
          title: l10n.upiName,
          subtitle: viewModel.upiName ?? l10n.upiNameDesc,
          onTap: () => _showUpiInputDialog(context, l10n.upiName,
              viewModel.upiName, (val) => viewModel.setUpiName(val)),
        ),
      ],
    );
  }

  void _showUpiInputDialog(BuildContext context, String title,
      String? currentValue, Function(String) onSave) {
    final l10n = AppLocalizations.of(context)!;
    final controller = TextEditingController(text: currentValue);
    BlurUtils.showBlurredDialog(
      context: context,
      child: AlertDialog(
        title: Text(l10n.editFieldTitle(title)),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: l10n.enterFieldHint(title),
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            child: Text(l10n.cancel),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            child: Text(l10n.save),
            onPressed: () {
              onSave(controller.text.trim());
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAutoDetectionSection(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.amber.withValues(alpha: isDark ? 0.15 : 0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.amber.withValues(alpha: isDark ? 0.3 : 0.4),
              width: 1,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: isDark ? Colors.amber[300] : Colors.amber[800],
                size: 24,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.cautionToUse,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: isDark ? Colors.amber[200] : Colors.amber[900],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l10n.autoDetectCautionDesc,
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: isDark
                            ? Colors.amber[100]?.withValues(alpha: 0.8)
                            : Colors.amber[900]?.withValues(alpha: 0.9),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SettingTile(
          icon: Icons.auto_awesome,
          title: l10n.autoDetectTitle,
          subtitle: l10n.autoDetectSettingSubtitle,
          trailing: FutureBuilder<bool>(
            future: TransactionDetectionService.isEnabled(),
            builder: (context, snapshot) {
              final isEnabled = snapshot.data ?? false;
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isEnabled)
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  Switch(
                    value: isEnabled,
                    onChanged: (value) async {
                      HapticFeedback.lightImpact();
                      try {
                        if (value) {
                          final hasNotification =
                              await NativeBridge.checkNotificationPermission();
                          final hasSms =
                              await NativeBridge.checkSmsPermission();

                          if (!hasNotification && !hasSms) {
                            final confirmed = await showDialog<bool>(
                              context: context,
                              builder: (context) => ConditionalBackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                isRouteBarrier: true,
                                child: const MonitoringSetupDialog(),
                              ),
                            );
                            if (confirmed != true) {
                              if (mounted) setState(() {});
                              return;
                            }
                          }

                          final notificationAccess =
                              await NativeBridge.checkNotificationPermission();
                          final smsAccess =
                              await NativeBridge.checkSmsPermission();

                          if (!notificationAccess && !smsAccess) {
                            if (mounted) {
                              ErrorHandler.showErrorSnackBar(
                                  context, l10n.permissionsRequiredNoAccess);
                              setState(() {});
                            }
                            return;
                          }

                          if (!notificationAccess && mounted) {
                            ErrorHandler.showWarningSnackBar(
                                context, l10n.noteNotificationAccessMissing);
                          } else if (!smsAccess && mounted) {
                            ErrorHandler.showWarningSnackBar(
                                context, l10n.noteSmsPermissionMissing);
                          }

                          await NativeBridge.requestBatteryOptimization();
                        }

                        await TransactionDetectionService.setEnabled(value);

                        if (!mounted) return;

                        if (!mounted) return;

                        ErrorHandler.showSuccessSnackBar(
                            context,
                            value
                                ? l10n.autoDetectionEnabledExclaim
                                : l10n.autoDetectionDisabledExclaim);

                        setState(() {});
                      } catch (e) {
                        if (mounted) {
                          ErrorHandler.handleError(context, e,
                              customMessage: l10n.failedUpdateAutoDetection);
                        }
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
        SettingTile(
          icon: Icons.history,
          title: l10n.processRecentDataTitle,
          subtitle: l10n.processRecentDataSubtitle,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              await TransactionDetectionService.processRecentSms();
              if (mounted) {
                ErrorHandler.showSuccessSnackBar(
                    context, l10n.recentDataProcessed);
              }
            } catch (e) {
              if (!mounted) return;
              ErrorHandler.handleError(context, e,
                  customMessage: l10n.errorProcessingData);
            }
          },
        ),
        SettingTile(
          icon: Icons.bug_report_outlined,
          title: l10n.testDetectionLogicTitle,
          subtitle: l10n.testDetectionLogicSubtitle,
          onTap: () => _showTestDetectionDialog(context),
        ),
        SettingTile(
          icon: Icons.manage_history,
          title: l10n.showDetectionHistoryTitle,
          subtitle: l10n.showDetectionHistorySubtitle,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DetectionHistoryPage()),
            );
          },
        ),
        SettingTile(
          icon: Icons.auto_delete_outlined,
          title: l10n.autoDeleteUndetectedTitle,
          subtitle: l10n.autoDeleteUndetectedSubtitle,
          trailing: Switch(
            value: context.watch<ThemeViewModel>().autoDeleteUndetected,
            onChanged: (value) {
              HapticFeedback.lightImpact();
              context.read<ThemeViewModel>().setAutoDeleteUndetected(value);
            },
          ),
        ),
      ],
    );
  }

  void _showTestDetectionDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final TextEditingController controller = TextEditingController(
      text:
          'Alert: Your account XX1234 has been debited by Rs. 500.00 for a purchase at AMAZON. Ref: 12345678.',
    );

    ParsedTransaction? result;

    BlurUtils.showBlurredDialog(
      context: context,
      child: StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text(l10n.testParserDiagnosticTitle),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.testParserDiagnosticDesc,
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: controller,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: l10n.pasteNotificationHint,
                    border: const OutlineInputBorder(),
                  ),
                ),
                if (result != null) ...[
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),
                  Text(
                      l10n.statusLabel(result!.isBalanceUpdate
                          ? l10n.statusBalanceSync
                          : result!.amount > 0
                              ? l10n.transactionDetected
                              : l10n.statusNoActionDetected),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: result!.amount > 0 || result!.isBalanceUpdate
                              ? Colors.green
                              : Colors.orange)),
                  const SizedBox(height: 8),
                  _resultItem(
                      l10n.amount, '₹${result!.amount.toStringAsFixed(2)}'),
                  _resultItem(l10n.transactionType,
                      result!.isIncome ? l10n.income : l10n.expense),
                  _resultItem(l10n.resultLabelMerchant,
                      result!.merchant ?? l10n.unknown),
                  _resultItem(l10n.category, result!.category ?? l10n.general),
                  _resultItem(
                      l10n.resultLabelBank, result!.bank ?? l10n.unknown),
                  _resultItem(
                      l10n.account, result!.account ?? l10n.notAvailable),
                  _resultItem(
                      l10n.balanceLabel,
                      result!.balance != null
                          ? '₹${result!.balance}'
                          : l10n.notAvailable),
                  _resultItem(l10n.resultLabelConfidence,
                      '${(result!.confidence * 100).toInt()}%'),
                ],
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.close),
            ),
            ElevatedButton(
              onPressed: () {
                final text = controller.text;
                final parsed =
                    TransactionParser.parse(text, packageName: 'com.test.bank');
                setDialogState(() {
                  result = parsed;
                });

                if (parsed == null) {
                  ErrorHandler.showErrorSnackBar(
                      context, l10n.patternNotMatched);
                }
              },
              child: Text(l10n.parseText),
            ),
          ],
        ),
      ),
    );
  }

  Widget _resultItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$label:',
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
          Text(value,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildBackupSection(BuildContext context, bool isDark) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SettingTile(
          icon: Icons.upload_file,
          title: l10n.exportCsvTitle,
          subtitle: l10n.exportCsvDesc,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              await BackupService.exportToCsvAndShare();
              if (!mounted) return;
              _showSnackBar(context, l10n.exportCsvSuccess);
            } catch (e) {
              if (!mounted) return;
              _showSnackBar(context, l10n.exportCsvFailed(e.toString()));
            }
          },
        ),
        SettingTile(
          icon: Icons.backup,
          title: l10n.fullBackupTitle,
          subtitle: l10n.fullBackupDesc,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              await BackupService.exportAllDataJsonAndShare();
              if (!mounted) return;
              _showSnackBar(context, l10n.backupCompleted);
            } catch (e) {
              if (!mounted) return;
              _showSnackBar(context, l10n.backupFailed(e.toString()));
            }
          },
        ),
        SettingTile(
          icon: Icons.restore,
          title: l10n.restoreBackupTitle,
          subtitle: l10n.restoreBackupDesc,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              final strategy =
                  await _showConflictResolutionSheet(context, l10n);
              if (strategy == null) {
                if (!mounted) return;
                _showSnackBar(context, l10n.restoreFailedCancelled);
                return;
              }
              final success = await BackupService.importDataFromJson(
                context,
                conflictResolutionStrategy: strategy,
              );
              if (!mounted) return;
              if (success) {
                _showSnackBar(context, l10n.restoreCompleted);
              } else {
                _showSnackBar(context, l10n.restoreFailedCancelled);
              }
            } catch (e) {
              if (!mounted) return;
              _showSnackBar(context, l10n.restoreFailed(e.toString()));
            }
          },
        ),
        SettingTile(
          icon: Icons.picture_as_pdf,
          title: l10n.exportPdfTitle,
          subtitle: l10n.exportPdfDesc,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              final file = await PDFService.generateHomeTransactionPDF();
              if (!mounted) return;
              await Printing.sharePdf(
                  bytes: await file.readAsBytes(),
                  filename: 'home_transactions.pdf');
              if (!mounted) return;
              _showSnackBar(context, l10n.pdfExported);
            } catch (e) {
              if (!mounted) return;
              _showSnackBar(context, l10n.pdfExportFailed(e.toString()));
            }
          },
        ),
        SettingTile(
          icon: Icons.groups,
          title: l10n.exportPeopleTitle,
          subtitle: l10n.exportPeopleDesc,
          onTap: () async {
            HapticFeedback.lightImpact();
            try {
              final file = await PDFService.generatePeopleTransactionPDF();
              if (!mounted) return;
              await Printing.sharePdf(
                  bytes: await file.readAsBytes(),
                  filename: 'person_transactions.pdf');
              if (!mounted) return;
              _showSnackBar(context, l10n.peopleExported);
            } catch (e) {
              if (!mounted) return;
              _showSnackBar(context, l10n.peopleExportFailed(e.toString()));
            }
          },
        ),
      ],
    );
  }

  Widget _buildDataManagementSection(BuildContext context, bool isDark) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SettingTile(
          icon: Icons.delete_forever,
          title: l10n.deleteAllDataTitle,
          subtitle: l10n.deleteAllDataWarningSubtitle,
          isDestructive: true,
          onTap: () {
            HapticFeedback.lightImpact();
            _confirmDeleteAll(context);
          },
        ),
        SettingTile(
          icon: Icons.refresh,
          title: l10n.resetIntroTitle,
          subtitle: l10n.resetIntroSubtitle,
          onTap: () {
            HapticFeedback.lightImpact();
            _confirmResetIntro(context);
          },
        ),
        SettingTile(
          icon: Icons.touch_app_outlined,
          title: l10n.replayTipsTitle,
          subtitle: l10n.replayTipsSubtitle,
          onTap: () async {
            HapticFeedback.lightImpact();
            await TourService.resetAll();
            if (!mounted) return;
            _showSnackBar(context, l10n.replayTipsDone);
          },
        ),
      ],
    );
  }

  Widget _buildCustomOptionsSection(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SettingTile(
          icon: Icons.category_outlined,
          title: l10n.incomeCategories,
          subtitle: l10n.incomeCategoriesDesc,
          onTap: () => _showManageItemsDialog(context, 'Income'),
        ),
        SettingTile(
          icon: Icons.category_outlined,
          title: l10n.expenseCategories,
          subtitle: l10n.expenseCategoriesDesc,
          onTap: () => _showManageItemsDialog(context, 'Expense'),
        ),
        SettingTile(
          icon: Icons.account_balance_outlined,
          title: l10n.accountsTitle,
          subtitle: l10n.accountsDesc,
          onTap: () => _showManageItemsDialog(context, 'Account'),
        ),
      ],
    );
  }

  /// Localized display label for the internal item-type identifier
  /// ('Income' / 'Expense' / 'Account') used across the manage-items dialogs.
  String _typeLabel(AppLocalizations l10n, String type) {
    switch (type) {
      case 'Income':
        return l10n.income;
      case 'Expense':
        return l10n.expense;
      default:
        return l10n.account;
    }
  }

  void _showManageItemsDialog(BuildContext context, String type) {
    final l10n = AppLocalizations.of(context)!;
    final typeLabel = _typeLabel(l10n, type);
    BlurUtils.showBlurredBottomSheet(
      context: context,
      child: StatefulBuilder(
        builder: (context, setStateDialog) {
          final themeViewModel = context.watch<ThemeViewModel>();
          final items = (type == 'Income')
              ? themeViewModel.incomeCategories
              : (type == 'Expense')
                  ? themeViewModel.expenseCategories
                  : themeViewModel.accounts;

          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
            ),
            padding: const EdgeInsets.all(24),
            height: MediaQuery.of(context).size.height * 0.75,
            child: Column(
              children: [
                Text(l10n.manageItemsTitle(typeLabel),
                    style: GoogleFonts.dmSans(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const Divider(),
                Expanded(
                  child: items.isEmpty
                      ? Center(
                          child: Text(
                            l10n.noItemsFound(typeLabel.toLowerCase()),
                            style: GoogleFonts.dmSans(color: Colors.grey),
                          ),
                        )
                      : ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return ListTile(
                              leading: (type == 'Income' || type == 'Expense')
                                  ? Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color:
                                            TransactionUtils.getCategoryColor(
                                                    item)
                                                .withValues(alpha: 0.1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        TransactionUtils.getCategorySvg(item),
                                        colorFilter: ColorFilter.mode(
                                            TransactionUtils.getCategoryColor(
                                                item),
                                            BlendMode.srcIn),
                                        width: 18,
                                        height: 18,
                                      ),
                                    )
                                  : null,
                              title: Text(item, style: GoogleFonts.dmSans()),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit_outlined,
                                        size: 20),
                                    onPressed: () => _showEditItemDialog(
                                        context,
                                        item,
                                        type,
                                        (n) => setStateDialog(() {})),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete_outline,
                                        color: Colors.red, size: 20),
                                    onPressed: () {
                                      themeViewModel.removeItem(item, type);
                                      setStateDialog(() {});
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: const Icon(Icons.add),
                    label: Text(l10n.addItemButton(typeLabel),
                        style: GoogleFonts.dmSans(fontWeight: FontWeight.bold)),
                    onPressed: () => _showEditItemDialog(
                        context, null, type, (n) => setStateDialog(() {})),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showEditItemDialog(
      BuildContext context, String? old, String type, Function(String) onDone) {
    final l10n = AppLocalizations.of(context)!;
    final typeLabel = _typeLabel(l10n, type);
    final controller = TextEditingController(text: old);

    BlurUtils.showBlurredBottomSheet(
      context: context,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  old == null
                      ? l10n.addItemButton(typeLabel)
                      : l10n.editItemTitle(typeLabel),
                  style: GoogleFonts.dmSans(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              TextField(
                controller: controller,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: l10n.enterNamePlaceholder,
                  labelText: l10n.itemNameLabel(typeLabel),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(l10n.cancel),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        final val = controller.text.trim();
                        if (val.isNotEmpty) {
                          final themeViewModel = context.read<ThemeViewModel>();
                          if (old == null) {
                            themeViewModel.addItem(val, type);
                          } else {
                            themeViewModel.updateItem(old, val, type);
                          }
                          onDone(val);
                          Navigator.pop(context);
                        }
                      },
                      child: Text(l10n.save),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppInfoSection(BuildContext context, bool isDark) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        SettingTile(
          icon: Icons.info_outline,
          title: l10n.aboutApp,
          subtitle: l10n.aboutAppSubtitle,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutPage()),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBudgetSection(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();
    final budget = themeViewModel.monthlyBudget;
    final l10n = AppLocalizations.of(context)!;
    return SettingTile(
      icon: Icons.track_changes,
      title: l10n.monthlyBudget,
      subtitle: budget > 0
          ? l10n.monthlyLimitSubtitle(
              '${themeViewModel.currencySymbol}${budget.toString()}')
          : l10n.setMonthlySpendingLimit,
      onTap: () => _showBudgetDialog(context),
    );
  }

  Widget _buildBalanceCalculationTile(BuildContext context) {
    final viewModel = context.watch<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    return SettingTile(
      icon: Icons.calculate_outlined,
      title: l10n.joinPreviousMonthBalanceTitle,
      subtitle: l10n.joinPreviousMonthBalanceDesc,
      onTap: null,
      trailing: Switch(
        value: viewModel.joinPreviousMonthBalance,
        onChanged: (value) {
          HapticFeedback.lightImpact();
          viewModel.setJoinPreviousMonthBalance(value);
        },
      ),
    );
  }

  void _showBudgetDialog(BuildContext context) {
    final viewModel = context.read<ThemeViewModel>();
    final l10n = AppLocalizations.of(context)!;
    final controller =
        TextEditingController(text: viewModel.monthlyBudget.toString());
    BlurUtils.showBlurredDialog(
      context: context,
      child: AlertDialog(
        title: Text(l10n.setMonthlyBudgetTitle),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: l10n.budgetAmountLabel,
            prefixText: '${viewModel.currencySymbol} ',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              final val = double.tryParse(controller.text) ?? 0.0;
              viewModel.setMonthlyBudget(val);
              if (!mounted) return;
              Navigator.pop(context);
              ErrorHandler.showSuccessSnackBar(context, l10n.budgetUpdated);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  Future<String?> _showConflictResolutionSheet(
      BuildContext context, AppLocalizations l10n) async {
    final theme = Theme.of(context);

    return showModalBottomSheet<String>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
          border: Border.all(color: theme.dividerColor.withValues(alpha: 0.08)),
        ),
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
              l10n.selectRestoreMode,
              style: GoogleFonts.dmSans(
                fontSize: AppTypography.fontSizeLarge,
                fontWeight: FontWeight.w800,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.restoreModeDesc,
              style: GoogleFonts.dmSans(
                fontSize: AppTypography.fontSizeSmall,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 24),
            _buildResolutionOption(
              context,
              title: l10n.mergeSkipDuplicates,
              desc: l10n.mergeSkipDesc,
              icon: Icons.merge_type_rounded,
              color: theme.colorScheme.primary,
              value: 'merge',
            ),
            const SizedBox(height: 16),
            _buildResolutionOption(
              context,
              title: l10n.overwriteConflicts,
              desc: l10n.overwriteConflictsDesc,
              icon: Icons.copy_all_rounded,
              // Amber: this option can replace existing records on conflict,
              // so it keeps the app's one caution color instead of a
              // one-off orange.
              color: Colors.amber.shade700,
              value: 'overwrite',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildResolutionOption(
    BuildContext context, {
    required String title,
    required String desc,
    required IconData icon,
    required Color color,
    required String value,
  }) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => Navigator.pop(context, value),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.dividerColor.withValues(alpha: 0.08)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: AppTypography.fontSizeSmall,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    desc,
                    style: GoogleFonts.dmSans(
                      fontSize: 11,
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded,
                size: 14,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.3)),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(context).colorScheme.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _confirmDeleteAll(BuildContext context) {
    final isDark =
        Provider.of<ThemeViewModel>(context, listen: false).isDarkMode;
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    BlurUtils.showBlurredDialog(
      context: context,
      child: AlertDialog(
        backgroundColor: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            const Icon(Icons.warning, color: Colors.red, size: 24),
            const SizedBox(width: 8),
            Text(
              l10n.confirmDeleteTitle,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        content: Text(
          l10n.confirmDeleteAllDesc,
          style: GoogleFonts.dmSans(
            color: isDark ? Colors.white70 : Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              l10n.cancel,
              style: TextStyle(color: theme.colorScheme.primary),
            ),
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.pop(context);
            },
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.delete),
            label: Text(l10n.deleteAllButton),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              HapticFeedback.lightImpact();
              try {
                final box = await Hive.openBox<double>('balanceBox');
                await box.clear();
                if (!context.mounted) return;
                await Provider.of<TransactionViewModel>(context, listen: false)
                    .deleteAllData();
                await Provider.of<PersonViewModel>(context, listen: false)
                    .deleteAllData();
                if (!context.mounted) return;
                Navigator.pop(context);
                _showSnackBar(context, l10n.allDataDeleted);
              } catch (e) {
                if (!context.mounted) return;
                Navigator.pop(context);
                _showSnackBar(context, l10n.failedDeleteAllData);
              }
            },
          ),
        ],
      ),
    );
  }

  void _confirmResetIntro(BuildContext context) async {
    final isDark =
        Provider.of<ThemeViewModel>(context, listen: false).isDarkMode;
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    BlurUtils.showBlurredDialog(
      context: context,
      child: AlertDialog(
        backgroundColor: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.refresh, color: theme.colorScheme.primary, size: 24),
            const SizedBox(width: 8),
            Text(
              l10n.resetIntroTitle,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        content: Text(
          l10n.resetIntroConfirmDesc,
          style: GoogleFonts.dmSans(
            color: isDark ? Colors.white70 : Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              l10n.cancel,
              style: TextStyle(color: theme.colorScheme.primary),
            ),
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.pop(context);
            },
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.refresh),
            label: Text(l10n.reset),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              HapticFeedback.lightImpact();
              try {
                final box = await Hive.openBox<double>('balanceBox');
                await box.clear();
                // Reset introCompleted flag in settings box
                final settingsBox = await Hive.openBox('settings');
                await settingsBox.put('introCompleted', false);
                if (!context.mounted) return;
                Navigator.pop(context);
                _showSnackBar(context, l10n.introReset);
              } catch (e) {
                if (!context.mounted) return;
                Navigator.pop(context);
                _showSnackBar(context, l10n.failedResetIntro(e.toString()));
              }
            },
          ),
        ],
      ),
    );
  }
}

extension StringCasingExtension on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}
