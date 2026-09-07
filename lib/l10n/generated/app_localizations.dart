import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('ja'),
    Locale('pt'),
    Locale('ru'),
    Locale('zh')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Aspends'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'Smart spending, simplified.'**
  String get appTagline;

  /// No description provided for @totalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get totalBalance;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @expense.
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// No description provided for @monthlyBudget.
  ///
  /// In en, this message translates to:
  /// **'Monthly Budget'**
  String get monthlyBudget;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @recentTransactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get recentTransactions;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// No description provided for @adaptiveColor.
  ///
  /// In en, this message translates to:
  /// **'Adaptive Color'**
  String get adaptiveColor;

  /// No description provided for @customColor.
  ///
  /// In en, this message translates to:
  /// **'Custom Color'**
  String get customColor;

  /// No description provided for @backup.
  ///
  /// In en, this message translates to:
  /// **'Backup & Restore'**
  String get backup;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get export;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import Data'**
  String get import;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @telegramSupport.
  ///
  /// In en, this message translates to:
  /// **'Telegram Support'**
  String get telegramSupport;

  /// No description provided for @addTransaction.
  ///
  /// In en, this message translates to:
  /// **'Add Transaction'**
  String get addTransaction;

  /// No description provided for @editTransaction.
  ///
  /// In en, this message translates to:
  /// **'Edit Transaction'**
  String get editTransaction;

  /// No description provided for @deleteTransaction.
  ///
  /// In en, this message translates to:
  /// **'Delete Transaction'**
  String get deleteTransaction;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note (Optional)'**
  String get note;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search transactions...'**
  String get search;

  /// No description provided for @noTransactions.
  ///
  /// In en, this message translates to:
  /// **'No transactions found'**
  String get noTransactions;

  /// No description provided for @voiceInput.
  ///
  /// In en, this message translates to:
  /// **'Voice Input'**
  String get voiceInput;

  /// No description provided for @speechUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Speech recognition unavailable'**
  String get speechUnavailable;

  /// No description provided for @microPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Microphone permission denied'**
  String get microPermissionDenied;

  /// No description provided for @microPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Microphone Access Required'**
  String get microPermissionTitle;

  /// No description provided for @microPermissionDesc.
  ///
  /// In en, this message translates to:
  /// **'Aspends requires microphone access to let you input transaction details via voice commands. Your voice inputs are parsed completely offline on your device and are never uploaded or shared.'**
  String get microPermissionDesc;

  /// No description provided for @microPermissionGrant.
  ///
  /// In en, this message translates to:
  /// **'Enable Voice'**
  String get microPermissionGrant;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @autoDetection.
  ///
  /// In en, this message translates to:
  /// **'Auto Transaction Detection'**
  String get autoDetection;

  /// No description provided for @backupExport.
  ///
  /// In en, this message translates to:
  /// **'Backup & Export'**
  String get backupExport;

  /// No description provided for @dataManagement.
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// No description provided for @budgetingBalance.
  ///
  /// In en, this message translates to:
  /// **'Budgeting & Balance'**
  String get budgetingBalance;

  /// No description provided for @customDropdowns.
  ///
  /// In en, this message translates to:
  /// **'Custom Dropdown Items'**
  String get customDropdowns;

  /// No description provided for @appInformation.
  ///
  /// In en, this message translates to:
  /// **'App Information'**
  String get appInformation;

  /// No description provided for @developedBy.
  ///
  /// In en, this message translates to:
  /// **'Developed with ❤️ by Sthrnilshaa'**
  String get developedBy;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred theme'**
  String get chooseTheme;

  /// No description provided for @appLock.
  ///
  /// In en, this message translates to:
  /// **'App Lock'**
  String get appLock;

  /// No description provided for @appLockDesc.
  ///
  /// In en, this message translates to:
  /// **'Require device authentication to open app'**
  String get appLockDesc;

  /// No description provided for @upiId.
  ///
  /// In en, this message translates to:
  /// **'UPI ID'**
  String get upiId;

  /// No description provided for @upiIdDesc.
  ///
  /// In en, this message translates to:
  /// **'Set your UPI ID for money requests'**
  String get upiIdDesc;

  /// No description provided for @upiName.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get upiName;

  /// No description provided for @upiNameDesc.
  ///
  /// In en, this message translates to:
  /// **'Optional: Name shown in UPI request'**
  String get upiNameDesc;

  /// No description provided for @analytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// No description provided for @people.
  ///
  /// In en, this message translates to:
  /// **'People'**
  String get people;

  /// No description provided for @charts.
  ///
  /// In en, this message translates to:
  /// **'Charts'**
  String get charts;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get sortBy;

  /// No description provided for @holdToRecord.
  ///
  /// In en, this message translates to:
  /// **'Hold to record transaction'**
  String get holdToRecord;

  /// No description provided for @couldNotFindAmount.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find amount. Try: \'Spent 500 on Food\''**
  String get couldNotFindAmount;

  /// No description provided for @savedAmount.
  ///
  /// In en, this message translates to:
  /// **'Saved {amount} for {category}'**
  String savedAmount(String amount, String category);

  /// No description provided for @logsDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted {count} logs'**
  String logsDeleted(int count);

  /// No description provided for @patternsIgnored.
  ///
  /// In en, this message translates to:
  /// **'Permanently ignored {count} patterns'**
  String patternsIgnored(int count);

  /// No description provided for @recheckComplete.
  ///
  /// In en, this message translates to:
  /// **'Recheck complete'**
  String get recheckComplete;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About Aspends'**
  String get aboutApp;

  /// No description provided for @developerDesigner.
  ///
  /// In en, this message translates to:
  /// **'Developer & Designer'**
  String get developerDesigner;

  /// No description provided for @leadDesigner.
  ///
  /// In en, this message translates to:
  /// **'Lead Designer'**
  String get leadDesigner;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// No description provided for @supportLegal.
  ///
  /// In en, this message translates to:
  /// **'Support & Legal'**
  String get supportLegal;

  /// No description provided for @privacyPolicyDesc.
  ///
  /// In en, this message translates to:
  /// **'Read our privacy policy document'**
  String get privacyPolicyDesc;

  /// No description provided for @helpSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupport;

  /// No description provided for @telegramSupportDesc.
  ///
  /// In en, this message translates to:
  /// **'Join our Telegram for support'**
  String get telegramSupportDesc;

  /// No description provided for @projectInfo.
  ///
  /// In en, this message translates to:
  /// **'Project Info'**
  String get projectInfo;

  /// No description provided for @openSource.
  ///
  /// In en, this message translates to:
  /// **'Open Source'**
  String get openSource;

  /// No description provided for @openSourceDesc.
  ///
  /// In en, this message translates to:
  /// **'Proudly open source on GitHub'**
  String get openSourceDesc;

  /// No description provided for @licenses.
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get licenses;

  /// No description provided for @licensesDesc.
  ///
  /// In en, this message translates to:
  /// **'View third-party licenses used in this app'**
  String get licensesDesc;

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate Aspends'**
  String get rateApp;

  /// No description provided for @rateAppDesc.
  ///
  /// In en, this message translates to:
  /// **'Support us with a 5-star rating'**
  String get rateAppDesc;

  /// No description provided for @couldNotLaunchUrl.
  ///
  /// In en, this message translates to:
  /// **'Could not launch URL'**
  String get couldNotLaunchUrl;

  /// No description provided for @errorWithDetails.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorWithDetails(String error);

  /// No description provided for @madeWithLove.
  ///
  /// In en, this message translates to:
  /// **'Made with ❤️ for better finance'**
  String get madeWithLove;

  /// No description provided for @howAspendWorks.
  ///
  /// In en, this message translates to:
  /// **'HOW ASPEND WORKS'**
  String get howAspendWorks;

  /// No description provided for @howItWorksTitle1.
  ///
  /// In en, this message translates to:
  /// **'1. Intelligent Interception'**
  String get howItWorksTitle1;

  /// No description provided for @howItWorksDesc1.
  ///
  /// In en, this message translates to:
  /// **'A secure, battery-optimized background service listens for incoming SMS and banking notifications.'**
  String get howItWorksDesc1;

  /// No description provided for @howItWorksTitle2.
  ///
  /// In en, this message translates to:
  /// **'2. Zero-Cloud Local Parsing'**
  String get howItWorksTitle2;

  /// No description provided for @howItWorksDesc2.
  ///
  /// In en, this message translates to:
  /// **'Smart offline algorithms extract amounts, categories, and merchants instantly—100% on your device.'**
  String get howItWorksDesc2;

  /// No description provided for @howItWorksTitle3.
  ///
  /// In en, this message translates to:
  /// **'3. Offline Auto-Recovery'**
  String get howItWorksTitle3;

  /// No description provided for @howItWorksDesc3.
  ///
  /// In en, this message translates to:
  /// **'Every time you open or resume Aspend, it auto-scans history for missed transactions during your absence.'**
  String get howItWorksDesc3;

  /// No description provided for @howItWorksTitle4.
  ///
  /// In en, this message translates to:
  /// **'4. Ultimate Privacy Lock'**
  String get howItWorksTitle4;

  /// No description provided for @howItWorksDesc4.
  ///
  /// In en, this message translates to:
  /// **'No servers, no web requests. Your financial data is protected locally inside encrypted Hive storage.'**
  String get howItWorksDesc4;

  /// No description provided for @autoDetectionSetup.
  ///
  /// In en, this message translates to:
  /// **'Auto-Detection Setup'**
  String get autoDetectionSetup;

  /// No description provided for @autoDetectionSetupDesc.
  ///
  /// In en, this message translates to:
  /// **'To automatically detect transactions, Aspends requires Notification Listener and SMS permissions. This allows the app to extract transaction details completely offline. Your financial messages are processed strictly on your device and are never uploaded or shared.'**
  String get autoDetectionSetupDesc;

  /// No description provided for @notificationAccess.
  ///
  /// In en, this message translates to:
  /// **'1. Notification Access'**
  String get notificationAccess;

  /// No description provided for @notificationAccessDesc.
  ///
  /// In en, this message translates to:
  /// **'Allows reading transaction notification alerts from bank and payment apps to record them automatically.'**
  String get notificationAccessDesc;

  /// No description provided for @smsPermission.
  ///
  /// In en, this message translates to:
  /// **'2. SMS Permission'**
  String get smsPermission;

  /// No description provided for @smsPermissionDesc.
  ///
  /// In en, this message translates to:
  /// **'Allows reading incoming transaction SMS alerts from your banks to record them automatically.'**
  String get smsPermissionDesc;

  /// No description provided for @finishSetup.
  ///
  /// In en, this message translates to:
  /// **'Finish Setup'**
  String get finishSetup;

  /// No description provided for @grant.
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get grant;

  /// No description provided for @appNameShort.
  ///
  /// In en, this message translates to:
  /// **'Aspends'**
  String get appNameShort;

  /// No description provided for @splashTagline.
  ///
  /// In en, this message translates to:
  /// **'Smart Money Management'**
  String get splashTagline;

  /// No description provided for @budget.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// No description provided for @overBudgetBy.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Over by {amount}'**
  String overBudgetBy(String amount);

  /// No description provided for @balanceDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Balance Details'**
  String get balanceDetailsTitle;

  /// No description provided for @editBalanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Balance'**
  String get editBalanceTitle;

  /// No description provided for @tapHoldToEditBalance.
  ///
  /// In en, this message translates to:
  /// **'Tap and hold to edit balance'**
  String get tapHoldToEditBalance;

  /// No description provided for @longPressBalanceCardHint.
  ///
  /// In en, this message translates to:
  /// **'Long press the balance card on the home screen'**
  String get longPressBalanceCardHint;

  /// No description provided for @newBalanceLabel.
  ///
  /// In en, this message translates to:
  /// **'New Balance'**
  String get newBalanceLabel;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search categories or notes...'**
  String get searchHint;

  /// No description provided for @emptyWalletTitle.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is quiet'**
  String get emptyWalletTitle;

  /// No description provided for @emptyWalletDesc.
  ///
  /// In en, this message translates to:
  /// **'Start by adding a transaction manually or enable auto-detection to track your spending effortlessly.'**
  String get emptyWalletDesc;

  /// No description provided for @addPerson.
  ///
  /// In en, this message translates to:
  /// **'Add Person'**
  String get addPerson;

  /// No description provided for @addNewPerson.
  ///
  /// In en, this message translates to:
  /// **'Add New Person'**
  String get addNewPerson;

  /// No description provided for @editPerson.
  ///
  /// In en, this message translates to:
  /// **'Edit Person'**
  String get editPerson;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Photo'**
  String get addPhoto;

  /// No description provided for @personName.
  ///
  /// In en, this message translates to:
  /// **'Person Name'**
  String get personName;

  /// No description provided for @youGet.
  ///
  /// In en, this message translates to:
  /// **'You Own'**
  String get youGet;

  /// No description provided for @youGive.
  ///
  /// In en, this message translates to:
  /// **'You Borrow'**
  String get youGive;

  /// No description provided for @youWillGet.
  ///
  /// In en, this message translates to:
  /// **'You will Own'**
  String get youWillGet;

  /// No description provided for @youWillGive.
  ///
  /// In en, this message translates to:
  /// **'You will Borrow'**
  String get youWillGive;

  /// No description provided for @noPeopleYet.
  ///
  /// In en, this message translates to:
  /// **'No people added yet'**
  String get noPeopleYet;

  /// No description provided for @searchPeople.
  ///
  /// In en, this message translates to:
  /// **'Search people...'**
  String get searchPeople;

  /// No description provided for @enterNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the name of the person you want to track transactions with'**
  String get enterNameHint;

  /// No description provided for @updateDetailsHint.
  ///
  /// In en, this message translates to:
  /// **'Update the details for this person'**
  String get updateDetailsHint;

  /// No description provided for @expenses.
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get expenses;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @trends.
  ///
  /// In en, this message translates to:
  /// **'Trends'**
  String get trends;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @noDataFound.
  ///
  /// In en, this message translates to:
  /// **'No data records found'**
  String get noDataFound;

  /// No description provided for @appColor.
  ///
  /// In en, this message translates to:
  /// **'App Color'**
  String get appColor;

  /// No description provided for @selectColor.
  ///
  /// In en, this message translates to:
  /// **'Select a custom app color'**
  String get selectColor;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Aspends Tracker'**
  String get welcomeTitle;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your personal finance companion'**
  String get welcomeSubtitle;

  /// No description provided for @welcomeDesc.
  ///
  /// In en, this message translates to:
  /// **'Track your income, expenses, and manage your money with ease. Stay on top of your financial goals.'**
  String get welcomeDesc;

  /// No description provided for @smartTrackingTitle.
  ///
  /// In en, this message translates to:
  /// **'Smart Transaction Tracking'**
  String get smartTrackingTitle;

  /// No description provided for @smartTrackingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Organize your finances'**
  String get smartTrackingSubtitle;

  /// No description provided for @smartTrackingDesc.
  ///
  /// In en, this message translates to:
  /// **'Categorize transactions, add notes, and get detailed insights into your spending patterns.'**
  String get smartTrackingDesc;

  /// No description provided for @peopleTrackingTitle.
  ///
  /// In en, this message translates to:
  /// **'Person-to-Person Tracking'**
  String get peopleTrackingTitle;

  /// No description provided for @peopleTrackingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage shared expenses'**
  String get peopleTrackingSubtitle;

  /// No description provided for @peopleTrackingDesc.
  ///
  /// In en, this message translates to:
  /// **'Track money you owe or are owed by others. Perfect for roommates, friends, and family.'**
  String get peopleTrackingDesc;

  /// No description provided for @analyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Analytics'**
  String get analyticsTitle;

  /// No description provided for @analyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Visualize your data'**
  String get analyticsSubtitle;

  /// No description provided for @analyticsDesc.
  ///
  /// In en, this message translates to:
  /// **'Charts and graphs help you understand your spending habits and financial trends.'**
  String get analyticsDesc;

  /// No description provided for @offlineTitle.
  ///
  /// In en, this message translates to:
  /// **'Fully Offline'**
  String get offlineTitle;

  /// No description provided for @offlineSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your data stays private'**
  String get offlineSubtitle;

  /// No description provided for @offlineDesc.
  ///
  /// In en, this message translates to:
  /// **'All your financial data is stored locally on your device. No internet required, complete privacy.'**
  String get offlineDesc;

  /// No description provided for @autoDetectTitle.
  ///
  /// In en, this message translates to:
  /// **'Auto Transaction Detection'**
  String get autoDetectTitle;

  /// No description provided for @autoDetectSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Smart & Automated'**
  String get autoDetectSubtitle;

  /// No description provided for @autoDetectDesc.
  ///
  /// In en, this message translates to:
  /// **'Automatically detect transactions from banking notifications. No more manual entry - your transactions are captured instantly!'**
  String get autoDetectDesc;

  /// No description provided for @readyTitle.
  ///
  /// In en, this message translates to:
  /// **'Ready to Start?'**
  String get readyTitle;

  /// No description provided for @readySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s begin your journey'**
  String get readySubtitle;

  /// No description provided for @readyDesc.
  ///
  /// In en, this message translates to:
  /// **'You\'re all set! Start tracking your finances and take control of your money today.'**
  String get readyDesc;

  /// No description provided for @settingUpApp.
  ///
  /// In en, this message translates to:
  /// **'Setting up your app...'**
  String get settingUpApp;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @requestMoney.
  ///
  /// In en, this message translates to:
  /// **'Request Money'**
  String get requestMoney;

  /// No description provided for @requestMoneyTooltip.
  ///
  /// In en, this message translates to:
  /// **'Request Money via UPI'**
  String get requestMoneyTooltip;

  /// No description provided for @generateQr.
  ///
  /// In en, this message translates to:
  /// **'Generate Payment QR'**
  String get generateQr;

  /// No description provided for @sortByNameAZ.
  ///
  /// In en, this message translates to:
  /// **'Name (A-Z)'**
  String get sortByNameAZ;

  /// No description provided for @sortByNameZA.
  ///
  /// In en, this message translates to:
  /// **'Name (Z-A)'**
  String get sortByNameZA;

  /// No description provided for @sortByBalanceHighest.
  ///
  /// In en, this message translates to:
  /// **'Balance (Highest)'**
  String get sortByBalanceHighest;

  /// No description provided for @sortByBalanceLowest.
  ///
  /// In en, this message translates to:
  /// **'Balance (Lowest)'**
  String get sortByBalanceLowest;

  /// No description provided for @upiIdNotSet.
  ///
  /// In en, this message translates to:
  /// **'UPI ID not set for this person. Please add it from edit.'**
  String get upiIdNotSet;

  /// No description provided for @couldNotFindUpiApp.
  ///
  /// In en, this message translates to:
  /// **'Could not find a UPI payment app'**
  String get couldNotFindUpiApp;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get noTransactionsYet;

  /// No description provided for @addFirstTransaction.
  ///
  /// In en, this message translates to:
  /// **'Add your first transaction with the person'**
  String get addFirstTransaction;

  /// No description provided for @settleBalance.
  ///
  /// In en, this message translates to:
  /// **'Settle Balance'**
  String get settleBalance;

  /// No description provided for @settleBalanceDesc.
  ///
  /// In en, this message translates to:
  /// **'This will add a transaction of {amount} to bring the balance to zero. Continue?'**
  String settleBalanceDesc(String amount);

  /// No description provided for @settle.
  ///
  /// In en, this message translates to:
  /// **'Settle'**
  String get settle;

  /// No description provided for @deletePerson.
  ///
  /// In en, this message translates to:
  /// **'Delete Person'**
  String get deletePerson;

  /// No description provided for @deletePersonDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {name}? This action cannot be undone.'**
  String deletePersonDesc(String name);

  /// No description provided for @deleteTransactionDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this transaction?'**
  String get deleteTransactionDesc;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @sortTransactionsBy.
  ///
  /// In en, this message translates to:
  /// **'Sort Transactions By'**
  String get sortTransactionsBy;

  /// No description provided for @sortByDateRecent.
  ///
  /// In en, this message translates to:
  /// **'Date (Recent)'**
  String get sortByDateRecent;

  /// No description provided for @sortByDateOldest.
  ///
  /// In en, this message translates to:
  /// **'Date (Oldest)'**
  String get sortByDateOldest;

  /// No description provided for @sortByAmountHighest.
  ///
  /// In en, this message translates to:
  /// **'Amount (Highest)'**
  String get sortByAmountHighest;

  /// No description provided for @sortByAmountLowest.
  ///
  /// In en, this message translates to:
  /// **'Amount (Lowest)'**
  String get sortByAmountLowest;

  /// No description provided for @rangeAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get rangeAll;

  /// No description provided for @rangeDay.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get rangeDay;

  /// No description provided for @rangeWeek.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get rangeWeek;

  /// No description provided for @rangeMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get rangeMonth;

  /// No description provided for @rangeYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get rangeYear;

  /// No description provided for @topCategory.
  ///
  /// In en, this message translates to:
  /// **'Top Category'**
  String get topCategory;

  /// No description provided for @noSpending.
  ///
  /// In en, this message translates to:
  /// **'No spending'**
  String get noSpending;

  /// No description provided for @avgDailySpend.
  ///
  /// In en, this message translates to:
  /// **'Avg. Daily Spend'**
  String get avgDailySpend;

  /// No description provided for @perDay.
  ///
  /// In en, this message translates to:
  /// **'Per day'**
  String get perDay;

  /// No description provided for @monitoredApps.
  ///
  /// In en, this message translates to:
  /// **'Monitored Apps'**
  String get monitoredApps;

  /// No description provided for @searchAppsHint.
  ///
  /// In en, this message translates to:
  /// **'Search payment or banking apps...'**
  String get searchAppsHint;

  /// No description provided for @noEligibleApps.
  ///
  /// In en, this message translates to:
  /// **'No eligible apps found'**
  String get noEligibleApps;

  /// No description provided for @noAppsMatchSearch.
  ///
  /// In en, this message translates to:
  /// **'No apps match your search'**
  String get noAppsMatchSearch;

  /// No description provided for @unknownApp.
  ///
  /// In en, this message translates to:
  /// **'Unknown App'**
  String get unknownApp;

  /// No description provided for @errorLoadingApps.
  ///
  /// In en, this message translates to:
  /// **'Error loading apps: {error}'**
  String errorLoadingApps(String error);

  /// No description provided for @selectedCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Selected'**
  String selectedCount(int count);

  /// No description provided for @ignorePatternsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Ignore Patterns'**
  String get ignorePatternsTooltip;

  /// No description provided for @deleteSelectedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get deleteSelectedTooltip;

  /// No description provided for @clearHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear History?'**
  String get clearHistoryTitle;

  /// No description provided for @clearHistoryDesc.
  ///
  /// In en, this message translates to:
  /// **'This will delete all saved detection logs.'**
  String get clearHistoryDesc;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @transactionDetected.
  ///
  /// In en, this message translates to:
  /// **'Transaction Detected'**
  String get transactionDetected;

  /// No description provided for @notificationLogged.
  ///
  /// In en, this message translates to:
  /// **'Notification Logged'**
  String get notificationLogged;

  /// No description provided for @patternNotMatched.
  ///
  /// In en, this message translates to:
  /// **'Pattern not matched'**
  String get patternNotMatched;

  /// No description provided for @notificationDataTitle.
  ///
  /// In en, this message translates to:
  /// **'NOTIFICATION DATA'**
  String get notificationDataTitle;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Message copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'COPY'**
  String get copy;

  /// No description provided for @smsMessage.
  ///
  /// In en, this message translates to:
  /// **'SMS Message'**
  String get smsMessage;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @listeningHint.
  ///
  /// In en, this message translates to:
  /// **'Listening...'**
  String get listeningHint;

  /// No description provided for @keepSpeaking.
  ///
  /// In en, this message translates to:
  /// **'Keep speaking...'**
  String get keepSpeaking;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @fullBackupTitle.
  ///
  /// In en, this message translates to:
  /// **'Full Backup (JSON)'**
  String get fullBackupTitle;

  /// No description provided for @fullBackupDesc.
  ///
  /// In en, this message translates to:
  /// **'Backup all data to JSON'**
  String get fullBackupDesc;

  /// No description provided for @restoreBackupTitle.
  ///
  /// In en, this message translates to:
  /// **'Restore Backup (JSON)'**
  String get restoreBackupTitle;

  /// No description provided for @restoreBackupDesc.
  ///
  /// In en, this message translates to:
  /// **'Restore all data from JSON backup'**
  String get restoreBackupDesc;

  /// No description provided for @backupCompleted.
  ///
  /// In en, this message translates to:
  /// **'Backup completed!'**
  String get backupCompleted;

  /// No description provided for @backupFailed.
  ///
  /// In en, this message translates to:
  /// **'Backup failed: {error}'**
  String backupFailed(String error);

  /// No description provided for @restoreCompleted.
  ///
  /// In en, this message translates to:
  /// **'Data restored successfully!'**
  String get restoreCompleted;

  /// No description provided for @restoreFailedCancelled.
  ///
  /// In en, this message translates to:
  /// **'Restore failed or cancelled'**
  String get restoreFailedCancelled;

  /// No description provided for @restoreFailed.
  ///
  /// In en, this message translates to:
  /// **'Restore failed: {error}'**
  String restoreFailed(String error);

  /// No description provided for @pdfExported.
  ///
  /// In en, this message translates to:
  /// **'PDF exported successfully!'**
  String get pdfExported;

  /// No description provided for @pdfExportFailed.
  ///
  /// In en, this message translates to:
  /// **'PDF export failed: {error}'**
  String pdfExportFailed(String error);

  /// No description provided for @peopleExported.
  ///
  /// In en, this message translates to:
  /// **'People data exported!'**
  String get peopleExported;

  /// No description provided for @peopleExportFailed.
  ///
  /// In en, this message translates to:
  /// **'People data export failed: {error}'**
  String peopleExportFailed(String error);

  /// No description provided for @allDataDeleted.
  ///
  /// In en, this message translates to:
  /// **'All data deleted successfully!'**
  String get allDataDeleted;

  /// No description provided for @introReset.
  ///
  /// In en, this message translates to:
  /// **'Intro reset successfully!'**
  String get introReset;

  /// No description provided for @selectRestoreMode.
  ///
  /// In en, this message translates to:
  /// **'Select Restore Mode'**
  String get selectRestoreMode;

  /// No description provided for @restoreModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose how to handle existing transaction records during data restore.'**
  String get restoreModeDesc;

  /// No description provided for @mergeSkipDuplicates.
  ///
  /// In en, this message translates to:
  /// **'Merge & Skip Duplicates'**
  String get mergeSkipDuplicates;

  /// No description provided for @mergeSkipDesc.
  ///
  /// In en, this message translates to:
  /// **'Avoid duplicate entries while keeping all unique new items.'**
  String get mergeSkipDesc;

  /// No description provided for @overwriteConflicts.
  ///
  /// In en, this message translates to:
  /// **'Overwrite & Update Conflicts'**
  String get overwriteConflicts;

  /// No description provided for @overwriteConflictsDesc.
  ///
  /// In en, this message translates to:
  /// **'Replace existing transaction records with backup versions in case of conflicts.'**
  String get overwriteConflictsDesc;

  /// No description provided for @exportCsvTitle.
  ///
  /// In en, this message translates to:
  /// **'Export Transactions (CSV)'**
  String get exportCsvTitle;

  /// No description provided for @exportCsvDesc.
  ///
  /// In en, this message translates to:
  /// **'Export your transactions to CSV'**
  String get exportCsvDesc;

  /// No description provided for @exportCsvSuccess.
  ///
  /// In en, this message translates to:
  /// **'Export completed successfully!'**
  String get exportCsvSuccess;

  /// No description provided for @exportCsvFailed.
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String exportCsvFailed(String error);

  /// No description provided for @exportPeopleTitle.
  ///
  /// In en, this message translates to:
  /// **'Export People Data'**
  String get exportPeopleTitle;

  /// No description provided for @exportPeopleDesc.
  ///
  /// In en, this message translates to:
  /// **'Backup people transactions'**
  String get exportPeopleDesc;

  /// No description provided for @exportPdfTitle.
  ///
  /// In en, this message translates to:
  /// **'Export as PDF'**
  String get exportPdfTitle;

  /// No description provided for @exportPdfDesc.
  ///
  /// In en, this message translates to:
  /// **'Generate PDF reports'**
  String get exportPdfDesc;

  /// No description provided for @biometricNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication is not supported on this device'**
  String get biometricNotSupported;

  /// No description provided for @noBiometricMethods.
  ///
  /// In en, this message translates to:
  /// **'No biometric authentication methods available'**
  String get noBiometricMethods;

  /// No description provided for @authenticateReason.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to enable app lock'**
  String get authenticateReason;

  /// No description provided for @authFailedAppLockNotEnabled.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. App lock not enabled.'**
  String get authFailedAppLockNotEnabled;

  /// No description provided for @appLockEnabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'App lock enabled successfully'**
  String get appLockEnabledSuccess;

  /// No description provided for @appLockDisabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'App lock disabled successfully'**
  String get appLockDisabledSuccess;

  /// No description provided for @failedToEnableAppLock.
  ///
  /// In en, this message translates to:
  /// **'Failed to enable app lock'**
  String get failedToEnableAppLock;

  /// No description provided for @failedToDisableAppLock.
  ///
  /// In en, this message translates to:
  /// **'Failed to disable app lock'**
  String get failedToDisableAppLock;

  /// No description provided for @pickAppColor.
  ///
  /// In en, this message translates to:
  /// **'Pick App Color'**
  String get pickAppColor;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @selectAction.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get selectAction;

  /// No description provided for @appColorResetDefault.
  ///
  /// In en, this message translates to:
  /// **'App color reset to default!'**
  String get appColorResetDefault;

  /// No description provided for @deviceNotSupportBiometricsOrAuth.
  ///
  /// In en, this message translates to:
  /// **'Device does not support biometrics or device authentication.'**
  String get deviceNotSupportBiometricsOrAuth;

  /// No description provided for @appLockEnabledDot.
  ///
  /// In en, this message translates to:
  /// **'App lock enabled.'**
  String get appLockEnabledDot;

  /// No description provided for @appLockDisabledDot.
  ///
  /// In en, this message translates to:
  /// **'App lock disabled.'**
  String get appLockDisabledDot;

  /// No description provided for @cautionToUse.
  ///
  /// In en, this message translates to:
  /// **'Caution to use'**
  String get cautionToUse;

  /// No description provided for @autoDetectCautionDesc.
  ///
  /// In en, this message translates to:
  /// **'This feature is not 100% perfect but might work. All SMS and notification data are processed 100% locally on your device for absolute privacy.'**
  String get autoDetectCautionDesc;

  /// No description provided for @autoDetectSettingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatically detect transactions from notifications'**
  String get autoDetectSettingSubtitle;

  /// No description provided for @permissionsRequiredNoAccess.
  ///
  /// In en, this message translates to:
  /// **'Permissions required: No notification or SMS access granted. Auto-detection cannot be enabled.'**
  String get permissionsRequiredNoAccess;

  /// No description provided for @noteNotificationAccessMissing.
  ///
  /// In en, this message translates to:
  /// **'Note: Notification access is missing. Only SMS detection will work.'**
  String get noteNotificationAccessMissing;

  /// No description provided for @noteSmsPermissionMissing.
  ///
  /// In en, this message translates to:
  /// **'Note: SMS permission is missing. Only Notification detection will work.'**
  String get noteSmsPermissionMissing;

  /// No description provided for @autoDetectionEnabledExclaim.
  ///
  /// In en, this message translates to:
  /// **'Auto-detection enabled!'**
  String get autoDetectionEnabledExclaim;

  /// No description provided for @autoDetectionDisabledExclaim.
  ///
  /// In en, this message translates to:
  /// **'Auto-detection disabled!'**
  String get autoDetectionDisabledExclaim;

  /// No description provided for @processRecentDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Process Recent Data'**
  String get processRecentDataTitle;

  /// No description provided for @processRecentDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Scan recent notifications for transactions'**
  String get processRecentDataSubtitle;

  /// No description provided for @recentDataProcessed.
  ///
  /// In en, this message translates to:
  /// **'Recent data processed successfully!'**
  String get recentDataProcessed;

  /// No description provided for @errorProcessingData.
  ///
  /// In en, this message translates to:
  /// **'Error processing data'**
  String get errorProcessingData;

  /// No description provided for @testDetectionLogicTitle.
  ///
  /// In en, this message translates to:
  /// **'Test Detection Logic'**
  String get testDetectionLogicTitle;

  /// No description provided for @testDetectionLogicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Simulate a notification to verify parsing'**
  String get testDetectionLogicSubtitle;

  /// No description provided for @showDetectionHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Show Detection History'**
  String get showDetectionHistoryTitle;

  /// No description provided for @showDetectionHistorySubtitle.
  ///
  /// In en, this message translates to:
  /// **'View detailed logs of detected transactions'**
  String get showDetectionHistorySubtitle;

  /// No description provided for @autoDeleteUndetectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Auto-delete undetected history'**
  String get autoDeleteUndetectedTitle;

  /// No description provided for @autoDeleteUndetectedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete undetected items after 12 hours'**
  String get autoDeleteUndetectedSubtitle;

  /// No description provided for @testParserDiagnosticTitle.
  ///
  /// In en, this message translates to:
  /// **'Test Parser Diagnostic'**
  String get testParserDiagnosticTitle;

  /// No description provided for @testParserDiagnosticDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter a sample notification message to see how our parser handles it.'**
  String get testParserDiagnosticDesc;

  /// No description provided for @pasteNotificationHint.
  ///
  /// In en, this message translates to:
  /// **'Paste notification text here...'**
  String get pasteNotificationHint;

  /// No description provided for @statusBalanceSync.
  ///
  /// In en, this message translates to:
  /// **'Balance Sync'**
  String get statusBalanceSync;

  /// No description provided for @statusNoActionDetected.
  ///
  /// In en, this message translates to:
  /// **'No Action Detected'**
  String get statusNoActionDetected;

  /// No description provided for @transactionType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get transactionType;

  /// No description provided for @resultLabelMerchant.
  ///
  /// In en, this message translates to:
  /// **'Merchant'**
  String get resultLabelMerchant;

  /// No description provided for @resultLabelBank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get resultLabelBank;

  /// No description provided for @balanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balanceLabel;

  /// No description provided for @resultLabelConfidence.
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get resultLabelConfidence;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get notAvailable;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @parseText.
  ///
  /// In en, this message translates to:
  /// **'Parse Text'**
  String get parseText;

  /// No description provided for @deleteAllDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete All Data'**
  String get deleteAllDataTitle;

  /// No description provided for @deleteAllDataWarningSubtitle.
  ///
  /// In en, this message translates to:
  /// **'⚠️ This action cannot be undone'**
  String get deleteAllDataWarningSubtitle;

  /// No description provided for @resetIntroTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Intro'**
  String get resetIntroTitle;

  /// No description provided for @resetIntroSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show intro screens again'**
  String get resetIntroSubtitle;

  /// No description provided for @incomeCategories.
  ///
  /// In en, this message translates to:
  /// **'Income Categories'**
  String get incomeCategories;

  /// No description provided for @incomeCategoriesDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage categories for income'**
  String get incomeCategoriesDesc;

  /// No description provided for @expenseCategories.
  ///
  /// In en, this message translates to:
  /// **'Expense Categories'**
  String get expenseCategories;

  /// No description provided for @expenseCategoriesDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage categories for expenses'**
  String get expenseCategoriesDesc;

  /// No description provided for @accountsTitle.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accountsTitle;

  /// No description provided for @accountsDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage your accounts'**
  String get accountsDesc;

  /// No description provided for @enterNamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter name...'**
  String get enterNamePlaceholder;

  /// No description provided for @aboutAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Developer, Privacy, Support & More'**
  String get aboutAppSubtitle;

  /// No description provided for @setMonthlySpendingLimit.
  ///
  /// In en, this message translates to:
  /// **'Set a monthly spending limit'**
  String get setMonthlySpendingLimit;

  /// No description provided for @joinPreviousMonthBalanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Join Previous Month Balance'**
  String get joinPreviousMonthBalanceTitle;

  /// No description provided for @joinPreviousMonthBalanceDesc.
  ///
  /// In en, this message translates to:
  /// **'Include previous month balance in current total'**
  String get joinPreviousMonthBalanceDesc;

  /// No description provided for @setMonthlyBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Set Monthly Budget'**
  String get setMonthlyBudgetTitle;

  /// No description provided for @budgetAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Budget Amount'**
  String get budgetAmountLabel;

  /// No description provided for @budgetUpdated.
  ///
  /// In en, this message translates to:
  /// **'Budget updated!'**
  String get budgetUpdated;

  /// No description provided for @confirmDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirmDeleteTitle;

  /// No description provided for @confirmDeleteAllDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete all transactions and reset your balance? This action cannot be undone.'**
  String get confirmDeleteAllDesc;

  /// No description provided for @deleteAllButton.
  ///
  /// In en, this message translates to:
  /// **'Delete All'**
  String get deleteAllButton;

  /// No description provided for @failedDeleteAllData.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete all data. Please try again.'**
  String get failedDeleteAllData;

  /// No description provided for @resetIntroConfirmDesc.
  ///
  /// In en, this message translates to:
  /// **'This will show the intro screens again the next time you open the app. Your data will remain unchanged.'**
  String get resetIntroConfirmDesc;

  /// No description provided for @editFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit {field}'**
  String editFieldTitle(String field);

  /// No description provided for @enterFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Enter {field}'**
  String enterFieldHint(String field);

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String statusLabel(String status);

  /// No description provided for @manageItemsTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage {type}s'**
  String manageItemsTitle(String type);

  /// No description provided for @noItemsFound.
  ///
  /// In en, this message translates to:
  /// **'No {type}s found.'**
  String noItemsFound(String type);

  /// No description provided for @addItemButton.
  ///
  /// In en, this message translates to:
  /// **'Add {type}'**
  String addItemButton(String type);

  /// No description provided for @editItemTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit {type}'**
  String editItemTitle(String type);

  /// No description provided for @itemNameLabel.
  ///
  /// In en, this message translates to:
  /// **'{type} Name'**
  String itemNameLabel(String type);

  /// No description provided for @monthlyLimitSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Monthly limit: {budget}'**
  String monthlyLimitSubtitle(String budget);

  /// No description provided for @failedResetIntro.
  ///
  /// In en, this message translates to:
  /// **'Failed to reset intro. Please try again.\\n{error}'**
  String failedResetIntro(String error);

  /// No description provided for @failedUpdateAutoDetection.
  ///
  /// In en, this message translates to:
  /// **'Failed to update auto-detection'**
  String get failedUpdateAutoDetection;

  /// No description provided for @actionCannotBeUndone.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get actionCannotBeUndone;

  /// No description provided for @deleteTransactionsCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} transactions?'**
  String deleteTransactionsCountTitle(int count);

  /// No description provided for @deletedTransactionsCount.
  ///
  /// In en, this message translates to:
  /// **'Deleted {count} transactions'**
  String deletedTransactionsCount(int count);

  /// No description provided for @transactionHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistoryTitle;

  /// No description provided for @upiIdMissingTitle.
  ///
  /// In en, this message translates to:
  /// **'UPI ID Missing'**
  String get upiIdMissingTitle;

  /// No description provided for @upiIdMissingDesc.
  ///
  /// In en, this message translates to:
  /// **'Please set your UPI ID in Settings to request money via QR code.'**
  String get upiIdMissingDesc;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @recipientFallback.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get recipientFallback;

  /// No description provided for @paymentLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Payment link copied!'**
  String get paymentLinkCopied;

  /// No description provided for @linkButton.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get linkButton;

  /// No description provided for @shareQr.
  ///
  /// In en, this message translates to:
  /// **'Share QR'**
  String get shareQr;

  /// No description provided for @upiPaymentLinkSubject.
  ///
  /// In en, this message translates to:
  /// **'UPI Payment Link'**
  String get upiPaymentLinkSubject;

  /// No description provided for @requestingFrom.
  ///
  /// In en, this message translates to:
  /// **'Requesting from {name}'**
  String requestingFrom(String name);

  /// No description provided for @upiIdColonValue.
  ///
  /// In en, this message translates to:
  /// **'UPI ID: {id}'**
  String upiIdColonValue(String id);

  /// No description provided for @failedShareQr.
  ///
  /// In en, this message translates to:
  /// **'Failed to share QR image: {error}'**
  String failedShareQr(String error);

  /// No description provided for @payViaUpiQrFor.
  ///
  /// In en, this message translates to:
  /// **'Pay via UPI QR for {name}'**
  String payViaUpiQrFor(String name);

  /// No description provided for @pleaseSelectPerson.
  ///
  /// In en, this message translates to:
  /// **'Please select a person'**
  String get pleaseSelectPerson;

  /// No description provided for @amountInInr.
  ///
  /// In en, this message translates to:
  /// **'Amount in INR'**
  String get amountInInr;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @selectCurrency.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get selectCurrency;

  /// No description provided for @searchCurrency.
  ///
  /// In en, this message translates to:
  /// **'Search currency'**
  String get searchCurrency;

  /// No description provided for @autoDetectCurrency.
  ///
  /// In en, this message translates to:
  /// **'Auto-detect currency'**
  String get autoDetectCurrency;

  /// No description provided for @autoDetectCurrencyDesc.
  ///
  /// In en, this message translates to:
  /// **'Automatically match your device\'s region'**
  String get autoDetectCurrencyDesc;

  /// No description provided for @popularCurrencies.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popularCurrencies;

  /// No description provided for @allCurrencies.
  ///
  /// In en, this message translates to:
  /// **'All Currencies'**
  String get allCurrencies;

  /// No description provided for @noCurrencyFound.
  ///
  /// In en, this message translates to:
  /// **'No currency found'**
  String get noCurrencyFound;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @quickCategories.
  ///
  /// In en, this message translates to:
  /// **'Quick Categories'**
  String get quickCategories;

  /// No description provided for @saveToPerson.
  ///
  /// In en, this message translates to:
  /// **'Save to Person'**
  String get saveToPerson;

  /// No description provided for @noPeopleCreateHint.
  ///
  /// In en, this message translates to:
  /// **'No people added yet. Create people under the People section.'**
  String get noPeopleCreateHint;

  /// No description provided for @selectPersonLabel.
  ///
  /// In en, this message translates to:
  /// **'Select Person'**
  String get selectPersonLabel;

  /// No description provided for @selectCategoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Category'**
  String get selectCategoryTitle;

  /// No description provided for @updateTransactionButton.
  ///
  /// In en, this message translates to:
  /// **'Update Transaction'**
  String get updateTransactionButton;

  /// No description provided for @saveTransactionButton.
  ///
  /// In en, this message translates to:
  /// **'Save Transaction'**
  String get saveTransactionButton;

  /// No description provided for @linkedToRecord.
  ///
  /// In en, this message translates to:
  /// **'Linked to {name}\'s record'**
  String linkedToRecord(String name);

  /// No description provided for @selectItemTitle.
  ///
  /// In en, this message translates to:
  /// **'Select {type}'**
  String selectItemTitle(String type);

  /// No description provided for @personSingular.
  ///
  /// In en, this message translates to:
  /// **'Person'**
  String get personSingular;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @setupFailedRetry.
  ///
  /// In en, this message translates to:
  /// **'Failed to complete setup. Please try again.'**
  String get setupFailedRetry;

  /// No description provided for @backButton.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backButton;

  /// No description provided for @voiceInputExampleHint.
  ///
  /// In en, this message translates to:
  /// **'Say something like \'Spent 500 on dinner\''**
  String get voiceInputExampleHint;

  /// No description provided for @autoDetectionEnabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Auto-detection enabled successfully!'**
  String get autoDetectionEnabledSuccess;

  /// No description provided for @openingRequestQrFor.
  ///
  /// In en, this message translates to:
  /// **'Opening Request QR for {name}'**
  String openingRequestQrFor(String name);

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @uncategorized.
  ///
  /// In en, this message translates to:
  /// **'Uncategorized'**
  String get uncategorized;

  /// No description provided for @timeLabel.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeLabel;

  /// No description provided for @statusColumnLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusColumnLabel;

  /// No description provided for @completedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completedLabel;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @serviceLabel.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get serviceLabel;

  /// No description provided for @refIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Ref ID'**
  String get refIdLabel;

  /// No description provided for @detectedViaLabel.
  ///
  /// In en, this message translates to:
  /// **'Detected via'**
  String get detectedViaLabel;

  /// No description provided for @attachmentsLabel.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get attachmentsLabel;

  /// No description provided for @originalLogLabel.
  ///
  /// In en, this message translates to:
  /// **'Original Log'**
  String get originalLogLabel;

  /// No description provided for @noNoteProvided.
  ///
  /// In en, this message translates to:
  /// **'No note provided'**
  String get noNoteProvided;

  /// No description provided for @tapToUnlock.
  ///
  /// In en, this message translates to:
  /// **'Tap to Unlock'**
  String get tapToUnlock;

  /// No description provided for @addPeopleEmptyDesc.
  ///
  /// In en, this message translates to:
  /// **'Add people to track transactions with them'**
  String get addPeopleEmptyDesc;

  /// No description provided for @noPeopleMatchSearch.
  ///
  /// In en, this message translates to:
  /// **'No people match your search'**
  String get noPeopleMatchSearch;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @unexpectedErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpectedErrorOccurred;

  /// No description provided for @autoDetectionActive.
  ///
  /// In en, this message translates to:
  /// **'Auto-Detection Active'**
  String get autoDetectionActive;

  /// No description provided for @unknownSource.
  ///
  /// In en, this message translates to:
  /// **'Unknown Source'**
  String get unknownSource;

  /// No description provided for @noMessageContentAvailable.
  ///
  /// In en, this message translates to:
  /// **'No message content available'**
  String get noMessageContentAvailable;

  /// No description provided for @addManually.
  ///
  /// In en, this message translates to:
  /// **'Add Manually'**
  String get addManually;

  /// No description provided for @detectedAsIncome.
  ///
  /// In en, this message translates to:
  /// **'Detected as Income'**
  String get detectedAsIncome;

  /// No description provided for @detectedAsExpense.
  ///
  /// In en, this message translates to:
  /// **'Detected as Expense'**
  String get detectedAsExpense;

  /// No description provided for @sourceColonValue.
  ///
  /// In en, this message translates to:
  /// **'Source: {source}'**
  String sourceColonValue(String source);

  /// No description provided for @sourceNotification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get sourceNotification;

  /// No description provided for @sourceSms.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get sourceSms;

  /// No description provided for @sourceRecheckHistory.
  ///
  /// In en, this message translates to:
  /// **'Recheck History'**
  String get sourceRecheckHistory;

  /// No description provided for @sourceManualAddHistory.
  ///
  /// In en, this message translates to:
  /// **'Manual Add (History)'**
  String get sourceManualAddHistory;

  /// No description provided for @recentLabel.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recentLabel;

  /// No description provided for @oldestLabel.
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get oldestLabel;

  /// No description provided for @highestLabel.
  ///
  /// In en, this message translates to:
  /// **'Highest'**
  String get highestLabel;

  /// No description provided for @lowestLabel.
  ///
  /// In en, this message translates to:
  /// **'Lowest'**
  String get lowestLabel;

  /// No description provided for @glassBlurEffectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Glass Blur Effects'**
  String get glassBlurEffectsTitle;

  /// No description provided for @glassBlurEffectsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Soft blur on glass panels and dialogs — uses more processing power, so turn it off on older devices for smoother performance.'**
  String get glassBlurEffectsSubtitle;

  /// No description provided for @tourBalanceCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Balance'**
  String get tourBalanceCardTitle;

  /// No description provided for @tourBalanceCardDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap for income & expense details. Long-press to edit your starting balance.'**
  String get tourBalanceCardDesc;

  /// No description provided for @tourAddIncomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Income'**
  String get tourAddIncomeTitle;

  /// No description provided for @tourAddIncomeDesc.
  ///
  /// In en, this message translates to:
  /// **'Log money you\'ve received.'**
  String get tourAddIncomeDesc;

  /// No description provided for @tourMicTitle.
  ///
  /// In en, this message translates to:
  /// **'Record by Voice'**
  String get tourMicTitle;

  /// No description provided for @tourMicDesc.
  ///
  /// In en, this message translates to:
  /// **'Press and hold, say the amount and what it was for, then release — it\'s saved automatically.'**
  String get tourMicDesc;

  /// No description provided for @tourAddExpenseTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Expense'**
  String get tourAddExpenseTitle;

  /// No description provided for @tourAddExpenseDesc.
  ///
  /// In en, this message translates to:
  /// **'Log money you\'ve spent.'**
  String get tourAddExpenseDesc;

  /// No description provided for @tourAddPersonTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a Person'**
  String get tourAddPersonTitle;

  /// No description provided for @tourAddPersonDesc.
  ///
  /// In en, this message translates to:
  /// **'Track what you owe each other over time.'**
  String get tourAddPersonDesc;

  /// No description provided for @tourPersonCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Open Their Ledger'**
  String get tourPersonCardTitle;

  /// No description provided for @tourPersonCardDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap a card to see the full history with this person and settle up.'**
  String get tourPersonCardDesc;

  /// No description provided for @tourPayNowTitle.
  ///
  /// In en, this message translates to:
  /// **'Settle Up'**
  String get tourPayNowTitle;

  /// No description provided for @tourPayNowDesc.
  ///
  /// In en, this message translates to:
  /// **'Pay what you owe them directly via UPI.'**
  String get tourPayNowDesc;

  /// No description provided for @tourEditPersonTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Person'**
  String get tourEditPersonTitle;

  /// No description provided for @tourEditPersonDesc.
  ///
  /// In en, this message translates to:
  /// **'Change their name or photo.'**
  String get tourEditPersonDesc;

  /// No description provided for @tourDeletePersonTitle.
  ///
  /// In en, this message translates to:
  /// **'Careful — Long-Press Deletes'**
  String get tourDeletePersonTitle;

  /// No description provided for @tourDeletePersonDesc.
  ///
  /// In en, this message translates to:
  /// **'Long-pressing this header permanently deletes this person and their history. You\'ll be asked to confirm first.'**
  String get tourDeletePersonDesc;

  /// No description provided for @tourDeleteTxTitle.
  ///
  /// In en, this message translates to:
  /// **'Long-Press to Delete'**
  String get tourDeleteTxTitle;

  /// No description provided for @tourDeleteTxDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap a transaction to edit it, or long-press to delete it.'**
  String get tourDeleteTxDesc;

  /// No description provided for @replayTipsTitle.
  ///
  /// In en, this message translates to:
  /// **'Show Tips Again'**
  String get replayTipsTitle;

  /// No description provided for @replayTipsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Replay the pointer-hint tours on Home, People, and Person Details.'**
  String get replayTipsSubtitle;

  /// No description provided for @replayTipsDone.
  ///
  /// In en, this message translates to:
  /// **'Tips will show again next time you open those screens.'**
  String get replayTipsDone;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'ja',
        'pt',
        'ru',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
