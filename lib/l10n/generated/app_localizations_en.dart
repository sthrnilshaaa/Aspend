// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'Smart spending, simplified.';

  @override
  String get totalBalance => 'Total Balance';

  @override
  String get income => 'Income';

  @override
  String get expense => 'Expense';

  @override
  String get monthlyBudget => 'Monthly Budget';

  @override
  String get transactions => 'Transactions';

  @override
  String get recentTransactions => 'Recent Transactions';

  @override
  String get seeAll => 'See All';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get systemDefault => 'System Default';

  @override
  String get adaptiveColor => 'Adaptive Color';

  @override
  String get customColor => 'Custom Color';

  @override
  String get backup => 'Backup & Restore';

  @override
  String get export => 'Export Data';

  @override
  String get import => 'Import Data';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get telegramSupport => 'Telegram Support';

  @override
  String get addTransaction => 'Add Transaction';

  @override
  String get editTransaction => 'Edit Transaction';

  @override
  String get deleteTransaction => 'Delete Transaction';

  @override
  String get amount => 'Amount';

  @override
  String get category => 'Category';

  @override
  String get account => 'Account';

  @override
  String get date => 'Date';

  @override
  String get note => 'Note (Optional)';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get search => 'Search transactions...';

  @override
  String get noTransactions => 'No transactions found';

  @override
  String get voiceInput => 'Voice Input';

  @override
  String get speechUnavailable => 'Speech recognition unavailable';

  @override
  String get microPermissionDenied => 'Microphone permission denied';

  @override
  String get microPermissionTitle => 'Microphone Access Required';

  @override
  String get microPermissionDesc =>
      'Aspends requires microphone access to let you input transaction details via voice commands. Your voice inputs are parsed completely offline on your device and are never uploaded or shared.';

  @override
  String get microPermissionGrant => 'Enable Voice';

  @override
  String get appearance => 'Appearance';

  @override
  String get security => 'Security';

  @override
  String get autoDetection => 'Auto Transaction Detection';

  @override
  String get backupExport => 'Backup & Export';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get budgetingBalance => 'Budgeting & Balance';

  @override
  String get customDropdowns => 'Custom Dropdown Items';

  @override
  String get appInformation => 'App Information';

  @override
  String get developedBy => 'Developed with ❤️ by Sthrnilshaa';

  @override
  String get chooseTheme => 'Choose your preferred theme';

  @override
  String get appLock => 'App Lock';

  @override
  String get appLockDesc => 'Require device authentication to open app';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiIdDesc => 'Set your UPI ID for money requests';

  @override
  String get upiName => 'Display Name';

  @override
  String get upiNameDesc => 'Optional: Name shown in UPI request';

  @override
  String get analytics => 'Analytics';

  @override
  String get people => 'People';

  @override
  String get charts => 'Charts';

  @override
  String get sortBy => 'Sort By';

  @override
  String get holdToRecord => 'Hold to record transaction';

  @override
  String get couldNotFindAmount =>
      'Couldn\'t find amount. Try: \'Spent 500 on Food\'';

  @override
  String savedAmount(String amount, String category) {
    return 'Saved $amount for $category';
  }

  @override
  String logsDeleted(int count) {
    return 'Deleted $count logs';
  }

  @override
  String patternsIgnored(int count) {
    return 'Permanently ignored $count patterns';
  }

  @override
  String get recheckComplete => 'Recheck complete';

  @override
  String get aboutApp => 'About Aspends';

  @override
  String get developerDesigner => 'Developer & Designer';

  @override
  String get leadDesigner => 'Lead Designer';

  @override
  String get developer => 'Developer';

  @override
  String get supportLegal => 'Support & Legal';

  @override
  String get privacyPolicyDesc => 'Read our privacy policy document';

  @override
  String get helpSupport => 'Help & Support';

  @override
  String get telegramSupportDesc => 'Join our Telegram for support';

  @override
  String get projectInfo => 'Project Info';

  @override
  String get openSource => 'Open Source';

  @override
  String get openSourceDesc => 'Proudly open source on GitHub';

  @override
  String get licenses => 'Open Source Licenses';

  @override
  String get licensesDesc => 'View third-party licenses used in this app';

  @override
  String get rateApp => 'Rate Aspends';

  @override
  String get rateAppDesc => 'Support us with a 5-star rating';

  @override
  String get couldNotLaunchUrl => 'Could not launch URL';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get madeWithLove => 'Made with ❤️ for better finance';

  @override
  String get howAspendWorks => 'HOW ASPEND WORKS';

  @override
  String get howItWorksTitle1 => '1. Intelligent Interception';

  @override
  String get howItWorksDesc1 =>
      'A secure, battery-optimized background service listens for incoming SMS and banking notifications.';

  @override
  String get howItWorksTitle2 => '2. Zero-Cloud Local Parsing';

  @override
  String get howItWorksDesc2 =>
      'Smart offline algorithms extract amounts, categories, and merchants instantly—100% on your device.';

  @override
  String get howItWorksTitle3 => '3. Offline Auto-Recovery';

  @override
  String get howItWorksDesc3 =>
      'Every time you open or resume Aspend, it auto-scans history for missed transactions during your absence.';

  @override
  String get howItWorksTitle4 => '4. Ultimate Privacy Lock';

  @override
  String get howItWorksDesc4 =>
      'No servers, no web requests. Your financial data is protected locally inside encrypted Hive storage.';

  @override
  String get autoDetectionSetup => 'Auto-Detection Setup';

  @override
  String get autoDetectionSetupDesc =>
      'To automatically detect transactions, Aspends requires Notification Listener and SMS permissions. This allows the app to extract transaction details completely offline. Your financial messages are processed strictly on your device and are never uploaded or shared.';

  @override
  String get notificationAccess => '1. Notification Access';

  @override
  String get notificationAccessDesc =>
      'Allows reading transaction notification alerts from bank and payment apps to record them automatically.';

  @override
  String get smsPermission => '2. SMS Permission';

  @override
  String get smsPermissionDesc =>
      'Allows reading incoming transaction SMS alerts from your banks to record them automatically.';

  @override
  String get finishSetup => 'Finish Setup';

  @override
  String get grant => 'Grant';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'Smart Money Management';

  @override
  String get budget => 'Budget';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ Over by $amount';
  }

  @override
  String get balanceDetailsTitle => 'Balance Details';

  @override
  String get editBalanceTitle => 'Edit Balance';

  @override
  String get tapHoldToEditBalance => 'Tap and hold to edit balance';

  @override
  String get longPressBalanceCardHint =>
      'Long press the balance card on the home screen';

  @override
  String get newBalanceLabel => 'New Balance';

  @override
  String get viewAll => 'View all';

  @override
  String get searchHint => 'Search categories or notes...';

  @override
  String get emptyWalletTitle => 'Your wallet is quiet';

  @override
  String get emptyWalletDesc =>
      'Start by adding a transaction manually or enable auto-detection to track your spending effortlessly.';

  @override
  String get addPerson => 'Add Person';

  @override
  String get addNewPerson => 'Add New Person';

  @override
  String get editPerson => 'Edit Person';

  @override
  String get addPhoto => 'Add Photo';

  @override
  String get personName => 'Person Name';

  @override
  String get youGet => 'You Own';

  @override
  String get youGive => 'You Borrow';

  @override
  String get youWillGet => 'You will Own';

  @override
  String get youWillGive => 'You will Borrow';

  @override
  String get noPeopleYet => 'No people added yet';

  @override
  String get searchPeople => 'Search people...';

  @override
  String get enterNameHint =>
      'Enter the name of the person you want to track transactions with';

  @override
  String get updateDetailsHint => 'Update the details for this person';

  @override
  String get expenses => 'Expenses';

  @override
  String get history => 'History';

  @override
  String get overview => 'Overview';

  @override
  String get trends => 'Trends';

  @override
  String get categories => 'Categories';

  @override
  String get noDataFound => 'No data records found';

  @override
  String get appColor => 'App Color';

  @override
  String get selectColor => 'Select a custom app color';

  @override
  String get welcomeTitle => 'Welcome to Aspends Tracker';

  @override
  String get welcomeSubtitle => 'Your personal finance companion';

  @override
  String get welcomeDesc =>
      'Track your income, expenses, and manage your money with ease. Stay on top of your financial goals.';

  @override
  String get smartTrackingTitle => 'Smart Transaction Tracking';

  @override
  String get smartTrackingSubtitle => 'Organize your finances';

  @override
  String get smartTrackingDesc =>
      'Categorize transactions, add notes, and get detailed insights into your spending patterns.';

  @override
  String get peopleTrackingTitle => 'Person-to-Person Tracking';

  @override
  String get peopleTrackingSubtitle => 'Manage shared expenses';

  @override
  String get peopleTrackingDesc =>
      'Track money you owe or are owed by others. Perfect for roommates, friends, and family.';

  @override
  String get analyticsTitle => 'Beautiful Analytics';

  @override
  String get analyticsSubtitle => 'Visualize your data';

  @override
  String get analyticsDesc =>
      'Charts and graphs help you understand your spending habits and financial trends.';

  @override
  String get offlineTitle => 'Fully Offline';

  @override
  String get offlineSubtitle => 'Your data stays private';

  @override
  String get offlineDesc =>
      'All your financial data is stored locally on your device. No internet required, complete privacy.';

  @override
  String get autoDetectTitle => 'Auto Transaction Detection';

  @override
  String get autoDetectSubtitle => 'Smart & Automated';

  @override
  String get autoDetectDesc =>
      'Automatically detect transactions from banking notifications. No more manual entry - your transactions are captured instantly!';

  @override
  String get readyTitle => 'Ready to Start?';

  @override
  String get readySubtitle => 'Let\'s begin your journey';

  @override
  String get readyDesc =>
      'You\'re all set! Start tracking your finances and take control of your money today.';

  @override
  String get settingUpApp => 'Setting up your app...';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Next';

  @override
  String get getStarted => 'Get Started';

  @override
  String get requestMoney => 'Request Money';

  @override
  String get requestMoneyTooltip => 'Request Money via UPI';

  @override
  String get generateQr => 'Generate Payment QR';

  @override
  String get sortByNameAZ => 'Name (A-Z)';

  @override
  String get sortByNameZA => 'Name (Z-A)';

  @override
  String get sortByBalanceHighest => 'Balance (Highest)';

  @override
  String get sortByBalanceLowest => 'Balance (Lowest)';

  @override
  String get upiIdNotSet =>
      'UPI ID not set for this person. Please add it from edit.';

  @override
  String get couldNotFindUpiApp => 'Could not find a UPI payment app';

  @override
  String get noTransactionsYet => 'No transactions yet';

  @override
  String get addFirstTransaction =>
      'Add your first transaction with the person';

  @override
  String get settleBalance => 'Settle Balance';

  @override
  String settleBalanceDesc(String amount) {
    return 'This will add a transaction of $amount to bring the balance to zero. Continue?';
  }

  @override
  String get settle => 'Settle';

  @override
  String get deletePerson => 'Delete Person';

  @override
  String deletePersonDesc(String name) {
    return 'Are you sure you want to delete $name? This action cannot be undone.';
  }

  @override
  String get deleteTransactionDesc =>
      'Are you sure you want to delete this transaction?';

  @override
  String get update => 'Update';

  @override
  String get sortTransactionsBy => 'Sort Transactions By';

  @override
  String get sortByDateRecent => 'Date (Recent)';

  @override
  String get sortByDateOldest => 'Date (Oldest)';

  @override
  String get sortByAmountHighest => 'Amount (Highest)';

  @override
  String get sortByAmountLowest => 'Amount (Lowest)';

  @override
  String get rangeAll => 'All';

  @override
  String get rangeDay => 'Day';

  @override
  String get rangeWeek => 'Week';

  @override
  String get rangeMonth => 'Month';

  @override
  String get rangeYear => 'Year';

  @override
  String get topCategory => 'Top Category';

  @override
  String get noSpending => 'No spending';

  @override
  String get avgDailySpend => 'Avg. Daily Spend';

  @override
  String get perDay => 'Per day';

  @override
  String get monitoredApps => 'Monitored Apps';

  @override
  String get searchAppsHint => 'Search payment or banking apps...';

  @override
  String get noEligibleApps => 'No eligible apps found';

  @override
  String get noAppsMatchSearch => 'No apps match your search';

  @override
  String get unknownApp => 'Unknown App';

  @override
  String errorLoadingApps(String error) {
    return 'Error loading apps: $error';
  }

  @override
  String selectedCount(int count) {
    return '$count Selected';
  }

  @override
  String get ignorePatternsTooltip => 'Ignore Patterns';

  @override
  String get deleteSelectedTooltip => 'Delete Selected';

  @override
  String get clearHistoryTitle => 'Clear History?';

  @override
  String get clearHistoryDesc => 'This will delete all saved detection logs.';

  @override
  String get clear => 'Clear';

  @override
  String get transactionDetected => 'Transaction Detected';

  @override
  String get notificationLogged => 'Notification Logged';

  @override
  String get patternNotMatched => 'Pattern not matched';

  @override
  String get notificationDataTitle => 'NOTIFICATION DATA';

  @override
  String get copiedToClipboard => 'Message copied to clipboard';

  @override
  String get copy => 'COPY';

  @override
  String get smsMessage => 'SMS Message';

  @override
  String get received => 'Received';

  @override
  String get paid => 'Paid';

  @override
  String get listeningHint => 'Listening...';

  @override
  String get keepSpeaking => 'Keep speaking...';

  @override
  String get done => 'Done';

  @override
  String get fullBackupTitle => 'Full Backup (JSON)';

  @override
  String get fullBackupDesc => 'Backup all data to JSON';

  @override
  String get restoreBackupTitle => 'Restore Backup (JSON)';

  @override
  String get restoreBackupDesc => 'Restore all data from JSON backup';

  @override
  String get backupCompleted => 'Backup completed!';

  @override
  String backupFailed(String error) {
    return 'Backup failed: $error';
  }

  @override
  String get restoreCompleted => 'Data restored successfully!';

  @override
  String get restoreFailedCancelled => 'Restore failed or cancelled';

  @override
  String restoreFailed(String error) {
    return 'Restore failed: $error';
  }

  @override
  String get pdfExported => 'PDF exported successfully!';

  @override
  String pdfExportFailed(String error) {
    return 'PDF export failed: $error';
  }

  @override
  String get peopleExported => 'People data exported!';

  @override
  String peopleExportFailed(String error) {
    return 'People data export failed: $error';
  }

  @override
  String get allDataDeleted => 'All data deleted successfully!';

  @override
  String get introReset => 'Intro reset successfully!';

  @override
  String get selectRestoreMode => 'Select Restore Mode';

  @override
  String get restoreModeDesc =>
      'Choose how to handle existing transaction records during data restore.';

  @override
  String get mergeSkipDuplicates => 'Merge & Skip Duplicates';

  @override
  String get mergeSkipDesc =>
      'Avoid duplicate entries while keeping all unique new items.';

  @override
  String get overwriteConflicts => 'Overwrite & Update Conflicts';

  @override
  String get overwriteConflictsDesc =>
      'Replace existing transaction records with backup versions in case of conflicts.';

  @override
  String get exportCsvTitle => 'Export Transactions (CSV)';

  @override
  String get exportCsvDesc => 'Export your transactions to CSV';

  @override
  String get exportCsvSuccess => 'Export completed successfully!';

  @override
  String exportCsvFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get exportPeopleTitle => 'Export People Data';

  @override
  String get exportPeopleDesc => 'Backup people transactions';

  @override
  String get exportPdfTitle => 'Export as PDF';

  @override
  String get exportPdfDesc => 'Generate PDF reports';

  @override
  String get biometricNotSupported =>
      'Biometric authentication is not supported on this device';

  @override
  String get noBiometricMethods =>
      'No biometric authentication methods available';

  @override
  String get authenticateReason => 'Authenticate to enable app lock';

  @override
  String get authFailedAppLockNotEnabled =>
      'Authentication failed. App lock not enabled.';

  @override
  String get appLockEnabledSuccess => 'App lock enabled successfully';

  @override
  String get appLockDisabledSuccess => 'App lock disabled successfully';

  @override
  String get failedToEnableAppLock => 'Failed to enable app lock';

  @override
  String get failedToDisableAppLock => 'Failed to disable app lock';

  @override
  String get pickAppColor => 'Pick App Color';

  @override
  String get reset => 'Reset';

  @override
  String get selectAction => 'Select';

  @override
  String get appColorResetDefault => 'App color reset to default!';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'Device does not support biometrics or device authentication.';

  @override
  String get appLockEnabledDot => 'App lock enabled.';

  @override
  String get appLockDisabledDot => 'App lock disabled.';

  @override
  String get cautionToUse => 'Caution to use';

  @override
  String get autoDetectCautionDesc =>
      'This feature is not 100% perfect but might work. All SMS and notification data are processed 100% locally on your device for absolute privacy.';

  @override
  String get autoDetectSettingSubtitle =>
      'Automatically detect transactions from notifications';

  @override
  String get permissionsRequiredNoAccess =>
      'Permissions required: No notification or SMS access granted. Auto-detection cannot be enabled.';

  @override
  String get noteNotificationAccessMissing =>
      'Note: Notification access is missing. Only SMS detection will work.';

  @override
  String get noteSmsPermissionMissing =>
      'Note: SMS permission is missing. Only Notification detection will work.';

  @override
  String get autoDetectionEnabledExclaim => 'Auto-detection enabled!';

  @override
  String get autoDetectionDisabledExclaim => 'Auto-detection disabled!';

  @override
  String get processRecentDataTitle => 'Process Recent Data';

  @override
  String get processRecentDataSubtitle =>
      'Scan recent notifications for transactions';

  @override
  String get recentDataProcessed => 'Recent data processed successfully!';

  @override
  String get errorProcessingData => 'Error processing data';

  @override
  String get testDetectionLogicTitle => 'Test Detection Logic';

  @override
  String get testDetectionLogicSubtitle =>
      'Simulate a notification to verify parsing';

  @override
  String get showDetectionHistoryTitle => 'Show Detection History';

  @override
  String get showDetectionHistorySubtitle =>
      'View detailed logs of detected transactions';

  @override
  String get autoDeleteUndetectedTitle => 'Auto-delete undetected history';

  @override
  String get autoDeleteUndetectedSubtitle =>
      'Delete undetected items after 12 hours';

  @override
  String get testParserDiagnosticTitle => 'Test Parser Diagnostic';

  @override
  String get testParserDiagnosticDesc =>
      'Enter a sample notification message to see how our parser handles it.';

  @override
  String get pasteNotificationHint => 'Paste notification text here...';

  @override
  String get statusBalanceSync => 'Balance Sync';

  @override
  String get statusNoActionDetected => 'No Action Detected';

  @override
  String get transactionType => 'Type';

  @override
  String get resultLabelMerchant => 'Merchant';

  @override
  String get resultLabelBank => 'Bank';

  @override
  String get balanceLabel => 'Balance';

  @override
  String get resultLabelConfidence => 'Confidence';

  @override
  String get unknown => 'Unknown';

  @override
  String get general => 'General';

  @override
  String get notAvailable => 'N/A';

  @override
  String get close => 'Close';

  @override
  String get parseText => 'Parse Text';

  @override
  String get deleteAllDataTitle => 'Delete All Data';

  @override
  String get deleteAllDataWarningSubtitle => '⚠️ This action cannot be undone';

  @override
  String get resetIntroTitle => 'Reset Intro';

  @override
  String get resetIntroSubtitle => 'Show intro screens again';

  @override
  String get incomeCategories => 'Income Categories';

  @override
  String get incomeCategoriesDesc => 'Manage categories for income';

  @override
  String get expenseCategories => 'Expense Categories';

  @override
  String get expenseCategoriesDesc => 'Manage categories for expenses';

  @override
  String get accountsTitle => 'Accounts';

  @override
  String get accountsDesc => 'Manage your accounts';

  @override
  String get enterNamePlaceholder => 'Enter name...';

  @override
  String get aboutAppSubtitle => 'Developer, Privacy, Support & More';

  @override
  String get setMonthlySpendingLimit => 'Set a monthly spending limit';

  @override
  String get joinPreviousMonthBalanceTitle => 'Join Previous Month Balance';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'Include previous month balance in current total';

  @override
  String get setMonthlyBudgetTitle => 'Set Monthly Budget';

  @override
  String get budgetAmountLabel => 'Budget Amount';

  @override
  String get budgetUpdated => 'Budget updated!';

  @override
  String get confirmDeleteTitle => 'Confirm Delete';

  @override
  String get confirmDeleteAllDesc =>
      'Are you sure you want to delete all transactions and reset your balance? This action cannot be undone.';

  @override
  String get deleteAllButton => 'Delete All';

  @override
  String get failedDeleteAllData =>
      'Failed to delete all data. Please try again.';

  @override
  String get resetIntroConfirmDesc =>
      'This will show the intro screens again the next time you open the app. Your data will remain unchanged.';

  @override
  String editFieldTitle(String field) {
    return 'Edit $field';
  }

  @override
  String enterFieldHint(String field) {
    return 'Enter $field';
  }

  @override
  String statusLabel(String status) {
    return 'Status: $status';
  }

  @override
  String manageItemsTitle(String type) {
    return 'Manage ${type}s';
  }

  @override
  String noItemsFound(String type) {
    return 'No ${type}s found.';
  }

  @override
  String addItemButton(String type) {
    return 'Add $type';
  }

  @override
  String editItemTitle(String type) {
    return 'Edit $type';
  }

  @override
  String itemNameLabel(String type) {
    return '$type Name';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'Monthly limit: $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'Failed to reset intro. Please try again.\\n$error';
  }

  @override
  String get failedUpdateAutoDetection => 'Failed to update auto-detection';

  @override
  String get actionCannotBeUndone => 'This action cannot be undone.';

  @override
  String deleteTransactionsCountTitle(int count) {
    return 'Delete $count transactions?';
  }

  @override
  String deletedTransactionsCount(int count) {
    return 'Deleted $count transactions';
  }

  @override
  String get transactionHistoryTitle => 'Transaction History';

  @override
  String get upiIdMissingTitle => 'UPI ID Missing';

  @override
  String get upiIdMissingDesc =>
      'Please set your UPI ID in Settings to request money via QR code.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get recipientFallback => 'Recipient';

  @override
  String get paymentLinkCopied => 'Payment link copied!';

  @override
  String get linkButton => 'Link';

  @override
  String get shareQr => 'Share QR';

  @override
  String get upiPaymentLinkSubject => 'UPI Payment Link';

  @override
  String requestingFrom(String name) {
    return 'Requesting from $name';
  }

  @override
  String upiIdColonValue(String id) {
    return 'UPI ID: $id';
  }

  @override
  String failedShareQr(String error) {
    return 'Failed to share QR image: $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return 'Pay via UPI QR for $name';
  }

  @override
  String get pleaseSelectPerson => 'Please select a person';

  @override
  String get amountInInr => 'Amount in INR';

  @override
  String get currency => 'Currency';

  @override
  String get selectCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency';

  @override
  String get autoDetectCurrency => 'Auto-detect currency';

  @override
  String get autoDetectCurrencyDesc =>
      'Automatically match your device\'s region';

  @override
  String get popularCurrencies => 'Popular';

  @override
  String get allCurrencies => 'All Currencies';

  @override
  String get noCurrencyFound => 'No currency found';

  @override
  String get requiredField => 'Required';

  @override
  String get quickCategories => 'Quick Categories';

  @override
  String get saveToPerson => 'Save to Person';

  @override
  String get noPeopleCreateHint =>
      'No people added yet. Create people under the People section.';

  @override
  String get selectPersonLabel => 'Select Person';

  @override
  String get selectCategoryTitle => 'Select Category';

  @override
  String get updateTransactionButton => 'Update Transaction';

  @override
  String get saveTransactionButton => 'Save Transaction';

  @override
  String linkedToRecord(String name) {
    return 'Linked to $name\'s record';
  }

  @override
  String selectItemTitle(String type) {
    return 'Select $type';
  }

  @override
  String get personSingular => 'Person';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get setupFailedRetry => 'Failed to complete setup. Please try again.';

  @override
  String get backButton => 'Back';

  @override
  String get voiceInputExampleHint =>
      'Say something like \'Spent 500 on dinner\'';

  @override
  String get autoDetectionEnabledSuccess =>
      'Auto-detection enabled successfully!';

  @override
  String openingRequestQrFor(String name) {
    return 'Opening Request QR for $name';
  }

  @override
  String get add => 'Add';

  @override
  String get uncategorized => 'Uncategorized';

  @override
  String get timeLabel => 'Time';

  @override
  String get statusColumnLabel => 'Status';

  @override
  String get completedLabel => 'Completed';

  @override
  String get notes => 'Notes';

  @override
  String get serviceLabel => 'Service';

  @override
  String get refIdLabel => 'Ref ID';

  @override
  String get detectedViaLabel => 'Detected via';

  @override
  String get attachmentsLabel => 'Attachments';

  @override
  String get originalLogLabel => 'Original Log';

  @override
  String get noNoteProvided => 'No note provided';

  @override
  String get tapToUnlock => 'Tap to Unlock';

  @override
  String get addPeopleEmptyDesc => 'Add people to track transactions with them';

  @override
  String get noPeopleMatchSearch => 'No people match your search';

  @override
  String get okay => 'Okay';

  @override
  String get confirm => 'Confirm';

  @override
  String get ok => 'OK';

  @override
  String get unexpectedErrorOccurred => 'An unexpected error occurred';

  @override
  String get autoDetectionActive => 'Auto-Detection Active';

  @override
  String get unknownSource => 'Unknown Source';

  @override
  String get noMessageContentAvailable => 'No message content available';

  @override
  String get addManually => 'Add Manually';

  @override
  String get detectedAsIncome => 'Detected as Income';

  @override
  String get detectedAsExpense => 'Detected as Expense';

  @override
  String sourceColonValue(String source) {
    return 'Source: $source';
  }

  @override
  String get sourceNotification => 'Notification';

  @override
  String get sourceSms => 'SMS';

  @override
  String get sourceRecheckHistory => 'Recheck History';

  @override
  String get sourceManualAddHistory => 'Manual Add (History)';

  @override
  String get recentLabel => 'Recent';

  @override
  String get oldestLabel => 'Oldest';

  @override
  String get highestLabel => 'Highest';

  @override
  String get lowestLabel => 'Lowest';

  @override
  String get glassBlurEffectsTitle => 'Glass Blur Effects';

  @override
  String get glassBlurEffectsSubtitle =>
      'Soft blur on glass panels and dialogs — uses more processing power, so turn it off on older devices for smoother performance.';

  @override
  String get tourBalanceCardTitle => 'Your Balance';

  @override
  String get tourBalanceCardDesc =>
      'Tap for income & expense details. Long-press to edit your starting balance.';

  @override
  String get tourAddIncomeTitle => 'Add Income';

  @override
  String get tourAddIncomeDesc => 'Log money you\'ve received.';

  @override
  String get tourMicTitle => 'Record by Voice';

  @override
  String get tourMicDesc =>
      'Press and hold, say the amount and what it was for, then release — it\'s saved automatically.';

  @override
  String get tourAddExpenseTitle => 'Add Expense';

  @override
  String get tourAddExpenseDesc => 'Log money you\'ve spent.';

  @override
  String get tourAddPersonTitle => 'Add a Person';

  @override
  String get tourAddPersonDesc => 'Track what you owe each other over time.';

  @override
  String get tourPersonCardTitle => 'Open Their Ledger';

  @override
  String get tourPersonCardDesc =>
      'Tap a card to see the full history with this person and settle up.';

  @override
  String get tourPayNowTitle => 'Settle Up';

  @override
  String get tourPayNowDesc => 'Pay what you owe them directly via UPI.';

  @override
  String get tourEditPersonTitle => 'Edit Person';

  @override
  String get tourEditPersonDesc => 'Change their name or photo.';

  @override
  String get tourDeletePersonTitle => 'Careful — Long-Press Deletes';

  @override
  String get tourDeletePersonDesc =>
      'Long-pressing this header permanently deletes this person and their history. You\'ll be asked to confirm first.';

  @override
  String get tourDeleteTxTitle => 'Long-Press to Delete';

  @override
  String get tourDeleteTxDesc =>
      'Tap a transaction to edit it, or long-press to delete it.';

  @override
  String get replayTipsTitle => 'Show Tips Again';

  @override
  String get replayTipsSubtitle =>
      'Replay the pointer-hint tours on Home, People, and Person Details.';

  @override
  String get replayTipsDone =>
      'Tips will show again next time you open those screens.';
}
