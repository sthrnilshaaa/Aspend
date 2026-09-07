// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'الإنفاق الذكي، مبسط.';

  @override
  String get totalBalance => 'الرصيد الإجمالي';

  @override
  String get income => 'دخل';

  @override
  String get expense => 'حساب';

  @override
  String get monthlyBudget => 'الميزانية الشهرية';

  @override
  String get transactions => 'المعاملات';

  @override
  String get recentTransactions => 'المعاملات الأخيرة';

  @override
  String get seeAll => 'رؤية الكل';

  @override
  String get settings => 'إعدادات';

  @override
  String get language => 'لغة';

  @override
  String get theme => 'سمة';

  @override
  String get darkMode => 'الوضع المظلم';

  @override
  String get lightMode => 'وضع الضوء';

  @override
  String get systemDefault => 'النظام الافتراضي';

  @override
  String get adaptiveColor => 'اللون التكيفي';

  @override
  String get customColor => 'لون مخصص';

  @override
  String get backup => 'النسخ الاحتياطي والاستعادة';

  @override
  String get export => 'تصدير البيانات';

  @override
  String get import => 'استيراد البيانات';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get telegramSupport => 'دعم برقية';

  @override
  String get addTransaction => 'إضافة المعاملة';

  @override
  String get editTransaction => 'تحرير المعاملة';

  @override
  String get deleteTransaction => 'حذف المعاملة';

  @override
  String get amount => 'كمية';

  @override
  String get category => 'فئة';

  @override
  String get account => 'حساب';

  @override
  String get date => 'تاريخ';

  @override
  String get note => 'ملاحظة (اختياري)';

  @override
  String get save => 'يحفظ';

  @override
  String get cancel => 'يلغي';

  @override
  String get delete => 'يمسح';

  @override
  String get search => 'بحث المعاملات...';

  @override
  String get noTransactions => 'لم يتم العثور على أي معاملات';

  @override
  String get voiceInput => 'الإدخال الصوتي';

  @override
  String get speechUnavailable => 'التعرف على الكلام غير متوفر';

  @override
  String get microPermissionDenied => 'تم رفض إذن الميكروفون';

  @override
  String get microPermissionTitle => 'يتطلب الوصول إلى الميكروفون';

  @override
  String get microPermissionDesc =>
      'يحتاج Aspends إلى الوصول إلى الميكروفون للسماح لك بإدخال تفاصيل المعاملات عبر الأوامر الصوتية. تتم معالجة مدخلاتك الصوتية بالكامل دون اتصال بالإنترنت على جهازك ولا يتم رفعها أو مشاركتها أبدًا.';

  @override
  String get microPermissionGrant => 'تفعيل الصوت';

  @override
  String get appearance => 'مظهر';

  @override
  String get security => 'حماية';

  @override
  String get autoDetection => 'الكشف التلقائي عن المعاملات';

  @override
  String get backupExport => 'النسخ الاحتياطي والتصدير';

  @override
  String get dataManagement => 'إدارة البيانات';

  @override
  String get budgetingBalance => 'الميزانية والتوازن';

  @override
  String get customDropdowns => 'العناصر المنسدلة المخصصة';

  @override
  String get appInformation => 'معلومات التطبيق';

  @override
  String get developedBy => 'تم تطويره بواسطة ❤️ بواسطة Sthrnilshaa';

  @override
  String get chooseTheme => 'اختر الموضوع المفضل لديك';

  @override
  String get appLock => 'قفل التطبيق';

  @override
  String get appLockDesc => 'يتطلب مصادقة الجهاز لفتح التطبيق';

  @override
  String get upiId => 'معرف واجهة الدفعات الموحدة (UPI).';

  @override
  String get upiIdDesc => 'قم بتعيين معرف UPI الخاص بك لطلبات الأموال';

  @override
  String get upiName => 'اسم العرض';

  @override
  String get upiNameDesc => 'اختياري: الاسم الموضح في طلب UPI';

  @override
  String get analytics => 'التحليلات';

  @override
  String get people => 'الناس';

  @override
  String get charts => 'الرسوم البيانية';

  @override
  String get sortBy => 'فرز حسب';

  @override
  String get holdToRecord => 'اضغط لتسجيل المعاملة';

  @override
  String get couldNotFindAmount =>
      'تعذر العثور على المبلغ. جرّب: \"أنفق 500 دولار على الطعام\"';

  @override
  String savedAmount(String amount, String category) {
    return 'تم حفظ $amount لـ $category';
  }

  @override
  String logsDeleted(int count) {
    return 'تم حذف $count من السجلات';
  }

  @override
  String patternsIgnored(int count) {
    return 'تم تجاهل أنماط $count بشكل دائم';
  }

  @override
  String get recheckComplete => 'اكتملت عملية إعادة الفحص';

  @override
  String get aboutApp => 'حول اسبندس';

  @override
  String get developerDesigner => 'المطور والمصمم';

  @override
  String get leadDesigner => 'المصمم الرئيسي';

  @override
  String get developer => 'المطور';

  @override
  String get supportLegal => 'الدعم والشؤون القانونية';

  @override
  String get privacyPolicyDesc => 'اقرأ وثيقة سياسة الخصوصية الخاصة بنا';

  @override
  String get helpSupport => 'المساعدة والدعم';

  @override
  String get telegramSupportDesc => 'انضم إلى Telegram للحصول على الدعم';

  @override
  String get projectInfo => 'معلومات المشروع';

  @override
  String get openSource => 'مفتوح المصدر';

  @override
  String get openSourceDesc => 'مصدر مفتوح بفخر على جيثب';

  @override
  String get licenses => 'تراخيص المصادر المفتوحة';

  @override
  String get licensesDesc =>
      'عرض تراخيص الجهات الخارجية المستخدمة في هذا التطبيق';

  @override
  String get rateApp => 'معدل تصاعدي';

  @override
  String get rateAppDesc => 'ادعمنا بتقييم 5 نجوم';

  @override
  String get couldNotLaunchUrl => 'تعذر فتح الرابط';

  @override
  String errorWithDetails(String error) {
    return 'خطأ: $error';
  }

  @override
  String get madeWithLove => 'صُنع بـ ❤️ من أجل مالية أفضل';

  @override
  String get howAspendWorks => 'كيف يعمل أسبيند';

  @override
  String get howItWorksTitle1 => '1. الاعتراض الذكي';

  @override
  String get howItWorksDesc1 =>
      'تستمع خدمة الخلفية الآمنة والمُحسّنة للبطارية إلى الرسائل النصية القصيرة والإشعارات المصرفية الواردة.';

  @override
  String get howItWorksTitle2 => '2. التحليل المحلي للسحابة الصفرية';

  @override
  String get howItWorksDesc2 =>
      'تقوم الخوارزميات الذكية غير المتصلة بالإنترنت باستخراج المبالغ والفئات والتجار على الفور - بنسبة 100% على جهازك.';

  @override
  String get howItWorksTitle3 => '3. الاسترداد التلقائي دون اتصال بالإنترنت';

  @override
  String get howItWorksDesc3 =>
      'في كل مرة تقوم فيها بفتح Aspend أو استئنافه، يقوم تلقائيًا بمسح سجل المعاملات المفقودة أثناء غيابك.';

  @override
  String get howItWorksTitle4 => '4. قفل الخصوصية المطلق';

  @override
  String get howItWorksDesc4 =>
      'لا توجد خوادم ولا طلبات الويب. تتم حماية بياناتك المالية محليًا داخل وحدة تخزين الخلية المشفرة.';

  @override
  String get autoDetectionSetup => 'إعداد الكشف التلقائي';

  @override
  String get autoDetectionSetupDesc =>
      'لاكتشاف المعاملات تلقائيًا، نحتاج إلى أذونات محددة. سيتم مراقبة جميع التطبيقات المصرفية والمعاملات بشكل آمن.';

  @override
  String get notificationAccess => '1. الوصول إلى الإخطار';

  @override
  String get notificationAccessDesc =>
      'يسمح لنا بقراءة تنبيهات المعاملات من تطبيقات البنك والدفع.';

  @override
  String get smsPermission => '2. إذن الرسائل القصيرة';

  @override
  String get smsPermissionDesc =>
      'تمكن من قراءة الرسائل القصيرة الخاصة بالمعاملات من البنك الذي تتعامل معه.';

  @override
  String get finishSetup => 'إنهاء الإعداد';

  @override
  String get grant => 'منحة';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'إدارة الأموال الذكية';

  @override
  String get budget => 'ميزانية';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ تجاوزت الميزانية بمقدار $amount';
  }

  @override
  String get balanceDetailsTitle => 'تفاصيل الرصيد';

  @override
  String get editBalanceTitle => 'تحرير الرصيد';

  @override
  String get tapHoldToEditBalance => 'انقر مع الاستمرار لتعديل الرصيد';

  @override
  String get longPressBalanceCardHint =>
      'اضغط مطولاً على بطاقة الرصيد في الشاشة الرئيسية';

  @override
  String get newBalanceLabel => 'توازن جديد';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get searchHint => 'البحث في الفئات أو الملاحظات...';

  @override
  String get emptyWalletTitle => 'محفظتك هادئة';

  @override
  String get emptyWalletDesc =>
      'ابدأ بإضافة معاملة يدويًا أو قم بتمكين الاكتشاف التلقائي لتتبع إنفاقك دون عناء.';

  @override
  String get addPerson => 'إضافة شخص';

  @override
  String get addNewPerson => 'إضافة شخص جديد';

  @override
  String get editPerson => 'تحرير الشخص';

  @override
  String get addPhoto => 'إضافة صورة';

  @override
  String get personName => 'اسم الشخص';

  @override
  String get youGet => 'أنت تملك';

  @override
  String get youGive => 'أنت تقترض';

  @override
  String get youWillGet => 'سوف تمتلك';

  @override
  String get youWillGive => 'سوف تقترض';

  @override
  String get noPeopleYet => 'لم تتم إضافة أي أشخاص حتى الآن';

  @override
  String get searchPeople => 'بحث عن الناس...';

  @override
  String get enterNameHint => 'أدخل اسم الشخص الذي تريد متابعة المعاملات معه';

  @override
  String get updateDetailsHint => 'تحديث التفاصيل لهذا الشخص';

  @override
  String get expenses => 'نفقات';

  @override
  String get history => 'تاريخ';

  @override
  String get overview => 'ملخص';

  @override
  String get trends => 'الاتجاهات';

  @override
  String get categories => 'فئات';

  @override
  String get noDataFound => 'لم يتم العثور على سجلات البيانات';

  @override
  String get appColor => 'لون التطبيق';

  @override
  String get selectColor => 'حدد لون التطبيق المخصص';

  @override
  String get welcomeTitle => 'مرحبًا بك في Aspends Tracker';

  @override
  String get welcomeSubtitle => 'رفيقك المالي الشخصي';

  @override
  String get welcomeDesc =>
      'تتبع دخلك ونفقاتك وإدارة أموالك بكل سهولة. البقاء على رأس أهدافك المالية.';

  @override
  String get smartTrackingTitle => 'تتبع المعاملات الذكية';

  @override
  String get smartTrackingSubtitle => 'تنظيم اموالك';

  @override
  String get smartTrackingDesc =>
      'قم بتصنيف المعاملات وإضافة الملاحظات والحصول على رؤى تفصيلية حول أنماط الإنفاق الخاصة بك.';

  @override
  String get peopleTrackingTitle => 'تتبع من شخص لآخر';

  @override
  String get peopleTrackingSubtitle => 'إدارة النفقات المشتركة';

  @override
  String get peopleTrackingDesc =>
      'تتبع الأموال المستحقة عليك أو المستحقة على الآخرين. مثالية لزملاء السكن والأصدقاء والعائلة.';

  @override
  String get analyticsTitle => 'تحليلات جميلة';

  @override
  String get analyticsSubtitle => 'تصور البيانات الخاصة بك';

  @override
  String get analyticsDesc =>
      'تساعدك المخططات والرسوم البيانية على فهم عادات الإنفاق والاتجاهات المالية لديك.';

  @override
  String get offlineTitle => 'غير متصل بالكامل';

  @override
  String get offlineSubtitle => 'تظل بياناتك خاصة';

  @override
  String get offlineDesc =>
      'يتم تخزين جميع بياناتك المالية محليًا على جهازك. لا حاجة للإنترنت، خصوصية كاملة.';

  @override
  String get autoDetectTitle => 'الكشف التلقائي عن المعاملات';

  @override
  String get autoDetectSubtitle => 'ذكية وآلية';

  @override
  String get autoDetectDesc =>
      'كشف المعاملات تلقائيا من الإخطارات المصرفية. لا مزيد من الإدخال اليدوي - سيتم تسجيل معاملاتك على الفور!';

  @override
  String get readyTitle => 'هل أنت مستعد للبدء؟';

  @override
  String get readySubtitle => 'لنبدأ رحلتك';

  @override
  String get readyDesc =>
      'أنت جاهز تمامًا! ابدأ بتتبع أموالك وتحكم في أموالك اليوم.';

  @override
  String get settingUpApp => 'جارٍ إعداد تطبيقك...';

  @override
  String get skip => 'يتخطى';

  @override
  String get next => 'التالي';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get requestMoney => 'طلب المال';

  @override
  String get requestMoneyTooltip => 'طلب أموال عبر UPI';

  @override
  String get generateQr => 'إنشاء QR للدفع';

  @override
  String get sortByNameAZ => 'الاسم (أ-ي)';

  @override
  String get sortByNameZA => 'الاسم (ي-أ)';

  @override
  String get sortByBalanceHighest => 'الرصيد (الأعلى)';

  @override
  String get sortByBalanceLowest => 'الرصيد (الأدنى)';

  @override
  String get upiIdNotSet =>
      'لم يتم تعيين معرف UPI لهذا الشخص. الرجاء إضافتها من التحرير.';

  @override
  String get couldNotFindUpiApp => 'تعذر العثور على تطبيق دفع UPI';

  @override
  String get noTransactionsYet => 'لا توجد معاملات حتى الآن';

  @override
  String get addFirstTransaction => 'أضف معاملتك الأولى مع الشخص';

  @override
  String get settleBalance => 'تسوية الرصيد';

  @override
  String settleBalanceDesc(String amount) {
    return 'سيؤدي هذا إلى إضافة معاملة بقيمة $amount ليصل الرصيد إلى الصفر. يكمل؟';
  }

  @override
  String get settle => 'يستقر';

  @override
  String get deletePerson => 'حذف الشخص';

  @override
  String deletePersonDesc(String name) {
    return 'هل أنت متأكد من رغبتك في حذف $name؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get deleteTransactionDesc => 'هل أنت متأكد أنك تريد حذف هذه المعاملة؟';

  @override
  String get update => 'تحديث';

  @override
  String get sortTransactionsBy => 'فرز المعاملات حسب';

  @override
  String get sortByDateRecent => 'التاريخ (الأخير)';

  @override
  String get sortByDateOldest => 'التاريخ (الأقدم)';

  @override
  String get sortByAmountHighest => 'المبلغ (الأعلى)';

  @override
  String get sortByAmountLowest => 'المبلغ (الأدنى)';

  @override
  String get rangeAll => 'الجميع';

  @override
  String get rangeDay => 'يوم';

  @override
  String get rangeWeek => 'أسبوع';

  @override
  String get rangeMonth => 'شهر';

  @override
  String get rangeYear => 'سنة';

  @override
  String get topCategory => 'الفئة الأعلى';

  @override
  String get noSpending => 'لا الإنفاق';

  @override
  String get avgDailySpend => 'متوسط الإنفاق اليومي';

  @override
  String get perDay => 'في اليوم الواحد';

  @override
  String get monitoredApps => 'التطبيقات المراقبة';

  @override
  String get searchAppsHint => 'البحث في تطبيقات الدفع أو الخدمات المصرفية...';

  @override
  String get noEligibleApps => 'لم يتم العثور على تطبيقات مؤهلة';

  @override
  String get noAppsMatchSearch => 'لا توجد تطبيقات تطابق بحثك';

  @override
  String get unknownApp => 'تطبيق غير معروف';

  @override
  String errorLoadingApps(String error) {
    return 'حدث خطأ أثناء تحميل التطبيقات: $error';
  }

  @override
  String selectedCount(int count) {
    return '$count تم التحديد';
  }

  @override
  String get ignorePatternsTooltip => 'تجاهل الأنماط';

  @override
  String get deleteSelectedTooltip => 'حذف المحدد';

  @override
  String get clearHistoryTitle => 'مسح التاريخ؟';

  @override
  String get clearHistoryDesc => 'سيؤدي هذا إلى حذف كافة سجلات الكشف المحفوظة.';

  @override
  String get clear => 'واضح';

  @override
  String get transactionDetected => 'تم الكشف عن المعاملة';

  @override
  String get notificationLogged => 'تم تسجيل الإخطار';

  @override
  String get patternNotMatched => 'النمط غير متطابق';

  @override
  String get notificationDataTitle => 'بيانات الإخطار';

  @override
  String get copiedToClipboard => 'تم نسخ الرسالة إلى الحافظة';

  @override
  String get copy => 'ينسخ';

  @override
  String get smsMessage => 'رسالة نصية قصيرة';

  @override
  String get received => 'تلقى';

  @override
  String get paid => 'مدفوع';

  @override
  String get listeningHint => 'جاري الاستماع...';

  @override
  String get keepSpeaking => 'استمر في الحديث...';

  @override
  String get done => 'منتهي';

  @override
  String get fullBackupTitle => 'النسخ الاحتياطي الكامل (JSON)';

  @override
  String get fullBackupDesc => 'النسخ الاحتياطي لجميع البيانات إلى JSON';

  @override
  String get restoreBackupTitle => 'استعادة النسخة الاحتياطية (JSON)';

  @override
  String get restoreBackupDesc =>
      'استعادة كافة البيانات من النسخة الاحتياطية JSON';

  @override
  String get backupCompleted => 'اكتمل النسخ الاحتياطي!';

  @override
  String backupFailed(String error) {
    return 'فشل النسخ الاحتياطي: $error';
  }

  @override
  String get restoreCompleted => 'تمت استعادة البيانات بنجاح!';

  @override
  String get restoreFailedCancelled => 'فشلت عملية الاستعادة أو تم إلغاؤها';

  @override
  String restoreFailed(String error) {
    return 'فشلت الاستعادة: $error';
  }

  @override
  String get pdfExported => 'تم تصدير ملف PDF بنجاح!';

  @override
  String pdfExportFailed(String error) {
    return 'فشل تصدير ملف PDF: $error';
  }

  @override
  String get peopleExported => 'تم تصدير بيانات الأشخاص!';

  @override
  String peopleExportFailed(String error) {
    return 'فشل تصدير بيانات الأشخاص: $error';
  }

  @override
  String get allDataDeleted => 'تم حذف كافة البيانات بنجاح!';

  @override
  String get introReset => 'تمت إعادة ضبط المقدمة بنجاح!';

  @override
  String get selectRestoreMode => 'حدد وضع الاستعادة';

  @override
  String get restoreModeDesc =>
      'اختر كيفية التعامل مع سجلات المعاملات الموجودة أثناء استعادة البيانات.';

  @override
  String get mergeSkipDuplicates => 'دمج وتخطي التكرارات';

  @override
  String get mergeSkipDesc =>
      'تجنب الإدخالات المكررة مع الاحتفاظ بجميع العناصر الجديدة الفريدة.';

  @override
  String get overwriteConflicts => 'الكتابة فوق وتحديث الصراعات';

  @override
  String get overwriteConflictsDesc =>
      'استبدل سجلات المعاملات الحالية بإصدارات احتياطية في حالة حدوث تعارضات.';

  @override
  String get exportCsvTitle => 'معاملات التصدير (CSV)';

  @override
  String get exportCsvDesc => 'تصدير المعاملات الخاصة بك إلى CSV';

  @override
  String get exportCsvSuccess => 'اكتمل التصدير بنجاح!';

  @override
  String exportCsvFailed(String error) {
    return 'فشل التصدير: $error';
  }

  @override
  String get exportPeopleTitle => 'تصدير بيانات الأشخاص';

  @override
  String get exportPeopleDesc => 'النسخ الاحتياطي للمعاملات الناس';

  @override
  String get exportPdfTitle => 'تصدير بصيغة PDF';

  @override
  String get exportPdfDesc => 'إنشاء تقارير PDF';

  @override
  String get biometricNotSupported =>
      'المصادقة البيومترية غير مدعومة على هذا الجهاز';

  @override
  String get noBiometricMethods => 'لا توجد طرق مصادقة بيومترية متاحة';

  @override
  String get authenticateReason => 'تحقق من هويتك لتفعيل قفل التطبيق';

  @override
  String get authFailedAppLockNotEnabled =>
      'فشلت المصادقة. لم يتم تفعيل قفل التطبيق.';

  @override
  String get appLockEnabledSuccess => 'تم تفعيل قفل التطبيق بنجاح';

  @override
  String get appLockDisabledSuccess => 'تم إلغاء تفعيل قفل التطبيق بنجاح';

  @override
  String get failedToEnableAppLock => 'فشل تفعيل قفل التطبيق';

  @override
  String get failedToDisableAppLock => 'فشل إلغاء تفعيل قفل التطبيق';

  @override
  String get pickAppColor => 'اختر لون التطبيق';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get selectAction => 'اختيار';

  @override
  String get appColorResetDefault =>
      'تمت إعادة تعيين لون التطبيق إلى الافتراضي!';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'لا يدعم الجهاز البصمة الحيوية أو مصادقة الجهاز.';

  @override
  String get appLockEnabledDot => 'تم تفعيل قفل التطبيق.';

  @override
  String get appLockDisabledDot => 'تم إلغاء تفعيل قفل التطبيق.';

  @override
  String get cautionToUse => 'احذر عند الاستخدام';

  @override
  String get autoDetectCautionDesc =>
      'هذه الميزة ليست دقيقة بنسبة 100% ولكنها قد تعمل. تتم معالجة جميع بيانات الرسائل النصية والإشعارات محليًا بالكامل على جهازك لضمان خصوصية تامة.';

  @override
  String get autoDetectSettingSubtitle =>
      'اكتشاف المعاملات تلقائيًا من الإشعارات';

  @override
  String get permissionsRequiredNoAccess =>
      'الأذونات مطلوبة: لم يتم منح إذن الوصول إلى الإشعارات أو الرسائل النصية. لا يمكن تفعيل الاكتشاف التلقائي.';

  @override
  String get noteNotificationAccessMissing =>
      'ملاحظة: إذن الوصول إلى الإشعارات مفقود. سيعمل اكتشاف الرسائل النصية فقط.';

  @override
  String get noteSmsPermissionMissing =>
      'ملاحظة: إذن الرسائل النصية مفقود. سيعمل اكتشاف الإشعارات فقط.';

  @override
  String get autoDetectionEnabledExclaim => 'تم تفعيل الاكتشاف التلقائي!';

  @override
  String get autoDetectionDisabledExclaim =>
      'تم إلغاء تفعيل الاكتشاف التلقائي!';

  @override
  String get processRecentDataTitle => 'معالجة البيانات الأخيرة';

  @override
  String get processRecentDataSubtitle =>
      'فحص الإشعارات الأخيرة بحثًا عن معاملات';

  @override
  String get recentDataProcessed => 'تمت معالجة البيانات الأخيرة بنجاح!';

  @override
  String get errorProcessingData => 'خطأ في معالجة البيانات';

  @override
  String get testDetectionLogicTitle => 'اختبار منطق الاكتشاف';

  @override
  String get testDetectionLogicSubtitle => 'محاكاة إشعار للتحقق من دقة التحليل';

  @override
  String get showDetectionHistoryTitle => 'عرض سجل الاكتشاف';

  @override
  String get showDetectionHistorySubtitle =>
      'عرض سجلات تفصيلية للمعاملات المكتشفة';

  @override
  String get autoDeleteUndetectedTitle => 'الحذف التلقائي للسجل غير المكتشف';

  @override
  String get autoDeleteUndetectedSubtitle =>
      'حذف العناصر غير المكتشفة بعد 12 ساعة';

  @override
  String get testParserDiagnosticTitle => 'تشخيص اختبار المحلل';

  @override
  String get testParserDiagnosticDesc =>
      'أدخل نص إشعار كعينة لترى كيف يتعامل المحلل معه.';

  @override
  String get pasteNotificationHint => 'الصق نص الإشعار هنا...';

  @override
  String get statusBalanceSync => 'مزامنة الرصيد';

  @override
  String get statusNoActionDetected => 'لم يتم اكتشاف أي إجراء';

  @override
  String get transactionType => 'النوع';

  @override
  String get resultLabelMerchant => 'التاجر';

  @override
  String get resultLabelBank => 'البنك';

  @override
  String get balanceLabel => 'الرصيد';

  @override
  String get resultLabelConfidence => 'مستوى الثقة';

  @override
  String get unknown => 'غير معروف';

  @override
  String get general => 'عام';

  @override
  String get notAvailable => 'غير متاح';

  @override
  String get close => 'إغلاق';

  @override
  String get parseText => 'تحليل النص';

  @override
  String get deleteAllDataTitle => 'حذف جميع البيانات';

  @override
  String get deleteAllDataWarningSubtitle =>
      '⚠️ لا يمكن التراجع عن هذا الإجراء';

  @override
  String get resetIntroTitle => 'إعادة تعيين المقدمة';

  @override
  String get resetIntroSubtitle => 'إظهار شاشات المقدمة مرة أخرى';

  @override
  String get incomeCategories => 'فئات الدخل';

  @override
  String get incomeCategoriesDesc => 'إدارة فئات الدخل';

  @override
  String get expenseCategories => 'فئات المصروفات';

  @override
  String get expenseCategoriesDesc => 'إدارة فئات المصروفات';

  @override
  String get accountsTitle => 'الحسابات';

  @override
  String get accountsDesc => 'إدارة حساباتك';

  @override
  String get enterNamePlaceholder => 'أدخل الاسم...';

  @override
  String get aboutAppSubtitle => 'المطور، الخصوصية، الدعم والمزيد';

  @override
  String get setMonthlySpendingLimit => 'حدد حدًا أقصى للإنفاق الشهري';

  @override
  String get joinPreviousMonthBalanceTitle => 'ضم رصيد الشهر السابق';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'تضمين رصيد الشهر السابق في الإجمالي الحالي';

  @override
  String get setMonthlyBudgetTitle => 'تحديد الميزانية الشهرية';

  @override
  String get budgetAmountLabel => 'مبلغ الميزانية';

  @override
  String get budgetUpdated => 'تم تحديث الميزانية!';

  @override
  String get confirmDeleteTitle => 'تأكيد الحذف';

  @override
  String get confirmDeleteAllDesc =>
      'هل أنت متأكد أنك تريد حذف جميع المعاملات وإعادة تعيين رصيدك؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get deleteAllButton => 'حذف الكل';

  @override
  String get failedDeleteAllData =>
      'فشل حذف جميع البيانات. يرجى المحاولة مرة أخرى.';

  @override
  String get resetIntroConfirmDesc =>
      'سيؤدي هذا إلى إظهار شاشات المقدمة مرة أخرى في المرة القادمة التي تفتح فيها التطبيق. ستظل بياناتك دون تغيير.';

  @override
  String editFieldTitle(String field) {
    return 'تعديل $field';
  }

  @override
  String enterFieldHint(String field) {
    return 'أدخل $field';
  }

  @override
  String statusLabel(String status) {
    return 'الحالة: $status';
  }

  @override
  String manageItemsTitle(String type) {
    return 'إدارة $type';
  }

  @override
  String noItemsFound(String type) {
    return 'لم يتم العثور على $type.';
  }

  @override
  String addItemButton(String type) {
    return 'إضافة $type';
  }

  @override
  String editItemTitle(String type) {
    return 'تعديل $type';
  }

  @override
  String itemNameLabel(String type) {
    return 'اسم $type';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'الحد الشهري: $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'فشلت إعادة تعيين المقدمة. يرجى المحاولة مرة أخرى.\\n$error';
  }

  @override
  String get failedUpdateAutoDetection => 'فشل تحديث الاكتشاف التلقائي';

  @override
  String get actionCannotBeUndone => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String deleteTransactionsCountTitle(int count) {
    return 'حذف $count معاملة؟';
  }

  @override
  String deletedTransactionsCount(int count) {
    return 'تم حذف $count معاملة';
  }

  @override
  String get transactionHistoryTitle => 'سجل المعاملات';

  @override
  String get upiIdMissingTitle => 'معرف UPI مفقود';

  @override
  String get upiIdMissingDesc =>
      'يرجى تعيين معرف UPI الخاص بك في الإعدادات لطلب الأموال عبر رمز الاستجابة السريعة.';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String get recipientFallback => 'المستلم';

  @override
  String get paymentLinkCopied => 'تم نسخ رابط الدفع!';

  @override
  String get linkButton => 'الرابط';

  @override
  String get shareQr => 'مشاركة رمز الاستجابة السريعة';

  @override
  String get upiPaymentLinkSubject => 'رابط دفع UPI';

  @override
  String requestingFrom(String name) {
    return 'طلب من $name';
  }

  @override
  String upiIdColonValue(String id) {
    return 'معرف UPI: $id';
  }

  @override
  String failedShareQr(String error) {
    return 'فشلت مشاركة صورة رمز الاستجابة السريعة: $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return 'الدفع عبر رمز UPI QR لـ $name';
  }

  @override
  String get pleaseSelectPerson => 'يرجى اختيار شخص';

  @override
  String get amountInInr => 'المبلغ بالروبية الهندية (INR)';

  @override
  String get currency => 'العملة';

  @override
  String get selectCurrency => 'اختر العملة';

  @override
  String get searchCurrency => 'ابحث عن عملة';

  @override
  String get autoDetectCurrency => 'الكشف التلقائي عن العملة';

  @override
  String get autoDetectCurrencyDesc => 'المطابقة التلقائية مع منطقة جهازك';

  @override
  String get popularCurrencies => 'شائعة';

  @override
  String get allCurrencies => 'جميع العملات';

  @override
  String get noCurrencyFound => 'لم يتم العثور على عملة';

  @override
  String get requiredField => 'مطلوب';

  @override
  String get quickCategories => 'فئات سريعة';

  @override
  String get saveToPerson => 'الحفظ لدى شخص';

  @override
  String get noPeopleCreateHint =>
      'لم تتم إضافة أي أشخاص بعد. أنشئ أشخاصًا ضمن قسم الأشخاص.';

  @override
  String get selectPersonLabel => 'اختر شخصًا';

  @override
  String get selectCategoryTitle => 'اختر الفئة';

  @override
  String get updateTransactionButton => 'تحديث المعاملة';

  @override
  String get saveTransactionButton => 'حفظ المعاملة';

  @override
  String linkedToRecord(String name) {
    return 'تم الربط بسجل $name';
  }

  @override
  String selectItemTitle(String type) {
    return 'اختر $type';
  }

  @override
  String get personSingular => 'شخص';

  @override
  String get error => 'خطأ';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get setupFailedRetry => 'فشل إكمال الإعداد. يرجى المحاولة مرة أخرى.';

  @override
  String get backButton => 'رجوع';

  @override
  String get voiceInputExampleHint => 'قل شيئًا مثل \"أنفقت 500 على العشاء\"';

  @override
  String get autoDetectionEnabledSuccess => 'تم تفعيل الاكتشاف التلقائي بنجاح!';

  @override
  String openingRequestQrFor(String name) {
    return 'فتح رمز طلب الأموال لـ $name';
  }

  @override
  String get add => 'إضافة';

  @override
  String get uncategorized => 'غير مصنف';

  @override
  String get timeLabel => 'الوقت';

  @override
  String get statusColumnLabel => 'الحالة';

  @override
  String get completedLabel => 'مكتمل';

  @override
  String get notes => 'ملاحظات';

  @override
  String get serviceLabel => 'الخدمة';

  @override
  String get refIdLabel => 'معرف المرجع';

  @override
  String get detectedViaLabel => 'تم الاكتشاف عبر';

  @override
  String get attachmentsLabel => 'المرفقات';

  @override
  String get originalLogLabel => 'السجل الأصلي';

  @override
  String get noNoteProvided => 'لم يتم تقديم أي ملاحظة';

  @override
  String get tapToUnlock => 'اضغط لفتح القفل';

  @override
  String get addPeopleEmptyDesc => 'أضف أشخاصًا لتتبع المعاملات معهم';

  @override
  String get noPeopleMatchSearch => 'لا يوجد أشخاص يطابقون بحثك';

  @override
  String get okay => 'حسنًا';

  @override
  String get confirm => 'تأكيد';

  @override
  String get ok => 'موافق';

  @override
  String get unexpectedErrorOccurred => 'حدث خطأ غير متوقع';

  @override
  String get autoDetectionActive => 'الاكتشاف التلقائي نشط';

  @override
  String get unknownSource => 'مصدر غير معروف';

  @override
  String get noMessageContentAvailable => 'لا يوجد محتوى رسالة متاح';

  @override
  String get addManually => 'إضافة يدويًا';

  @override
  String get detectedAsIncome => 'تم اكتشافه كدخل';

  @override
  String get detectedAsExpense => 'تم اكتشافه كمصروف';

  @override
  String sourceColonValue(String source) {
    return 'المصدر: $source';
  }

  @override
  String get sourceNotification => 'إشعار';

  @override
  String get sourceSms => 'رسالة نصية';

  @override
  String get sourceRecheckHistory => 'إعادة فحص السجل';

  @override
  String get sourceManualAddHistory => 'إضافة يدوية (من السجل)';

  @override
  String get recentLabel => 'الأحدث';

  @override
  String get oldestLabel => 'الأقدم';

  @override
  String get highestLabel => 'الأعلى';

  @override
  String get lowestLabel => 'الأدنى';

  @override
  String get glassBlurEffectsTitle => 'تأثيرات الضبابية الزجاجية';

  @override
  String get glassBlurEffectsSubtitle =>
      'تأثير ضبابي ناعم على اللوحات الزجاجية ومربعات الحوار — يستهلك المزيد من قدرة المعالجة، لذا أوقفه على الأجهزة القديمة لأداء أكثر سلاسة.';

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
