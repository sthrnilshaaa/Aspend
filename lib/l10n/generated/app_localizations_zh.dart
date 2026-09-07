// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => '智能支出，简化。';

  @override
  String get totalBalance => '总余额';

  @override
  String get income => '收入';

  @override
  String get expense => '费用';

  @override
  String get monthlyBudget => '每月预算';

  @override
  String get transactions => '交易';

  @override
  String get recentTransactions => '最近交易';

  @override
  String get seeAll => '查看全部';

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get theme => '主题';

  @override
  String get darkMode => '深色模式';

  @override
  String get lightMode => '灯光模式';

  @override
  String get systemDefault => '系统默认值';

  @override
  String get adaptiveColor => '自适应颜色';

  @override
  String get customColor => '定制颜色';

  @override
  String get backup => '备份与恢复';

  @override
  String get export => '导出数据';

  @override
  String get import => '导入数据';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get telegramSupport => '电报支持';

  @override
  String get addTransaction => '添加交易';

  @override
  String get editTransaction => '编辑交易';

  @override
  String get deleteTransaction => '删除交易';

  @override
  String get amount => '数量';

  @override
  String get category => '类别';

  @override
  String get account => '帐户';

  @override
  String get date => '日期';

  @override
  String get note => '注意（可选）';

  @override
  String get save => '节省';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get search => '搜索交易...';

  @override
  String get noTransactions => '未找到交易';

  @override
  String get voiceInput => '语音输入';

  @override
  String get speechUnavailable => '语音识别不可用';

  @override
  String get microPermissionDenied => '麦克风权限被拒绝';

  @override
  String get microPermissionTitle => '需要麦克风权限';

  @override
  String get microPermissionDesc =>
      'Aspends 需要麦克风权限，以便您通过语音命令输入交易详情。您的语音输入完全在设备上离线解析，绝不会上传或共享。';

  @override
  String get microPermissionGrant => '启用语音';

  @override
  String get appearance => '外貌';

  @override
  String get security => '安全';

  @override
  String get autoDetection => '自动交易检测';

  @override
  String get backupExport => '备份与导出';

  @override
  String get dataManagement => '数据管理';

  @override
  String get budgetingBalance => '预算与平衡';

  @override
  String get customDropdowns => '自定义下拉项';

  @override
  String get appInformation => '应用信息';

  @override
  String get developedBy => '由 Sthrnilshaa 与 ❤️ 一起开发';

  @override
  String get chooseTheme => '选择您喜欢的主题';

  @override
  String get appLock => '应用锁';

  @override
  String get appLockDesc => '需要设备身份验证才能打开应用程序';

  @override
  String get upiId => '统一识别​​码';

  @override
  String get upiIdDesc => '为付款请求设置您的 UPI ID';

  @override
  String get upiName => '显示名称';

  @override
  String get upiNameDesc => '可选：UPI 请求中显示的名称';

  @override
  String get analytics => '分析';

  @override
  String get people => '人们';

  @override
  String get charts => '图表';

  @override
  String get sortBy => '排序方式';

  @override
  String get holdToRecord => '按住记录交易';

  @override
  String get couldNotFindAmount => '找不到金额。尝试：“在食物上花了 500 美元”';

  @override
  String savedAmount(String amount, String category) {
    return '为 $category 节省了 $amount';
  }

  @override
  String logsDeleted(int count) {
    return '已删除 $count 条日志';
  }

  @override
  String patternsIgnored(int count) {
    return '永久忽略 $count 模式';
  }

  @override
  String get recheckComplete => '复检完成';

  @override
  String get aboutApp => '关于阿斯彭德斯';

  @override
  String get developerDesigner => '开发商及设计师';

  @override
  String get leadDesigner => '首席设计师';

  @override
  String get developer => '开发商';

  @override
  String get supportLegal => '支持与法律';

  @override
  String get privacyPolicyDesc => '阅读我们的隐私政策文件';

  @override
  String get helpSupport => '帮助与支持';

  @override
  String get telegramSupportDesc => '加入我们的 Telegram 以获得支持';

  @override
  String get projectInfo => '项目信息';

  @override
  String get openSource => '开源';

  @override
  String get openSourceDesc => '自豪地在 GitHub 上开源';

  @override
  String get licenses => '开源许可证';

  @override
  String get licensesDesc => '查看此应用中使用的第三方许可证';

  @override
  String get rateApp => '费率上升';

  @override
  String get rateAppDesc => '支持我们并给予 5 星评级';

  @override
  String get couldNotLaunchUrl => '无法打开链接';

  @override
  String errorWithDetails(String error) {
    return '错误：$error';
  }

  @override
  String get madeWithLove => '用 ❤️ 打造，只为更好的理财';

  @override
  String get howAspendWorks => 'ASPEND 如何运作';

  @override
  String get howItWorksTitle1 => '1. 智能拦截';

  @override
  String get howItWorksDesc1 => '安全、电池优化的后台服务监听传入的短信和银行通知。';

  @override
  String get howItWorksTitle2 => '2. 零云本地解析';

  @override
  String get howItWorksDesc2 => '智能离线算法可在您的设备上 100% 即时提取金额、类别和商家。';

  @override
  String get howItWorksTitle3 => '3. 离线自动恢复';

  @override
  String get howItWorksDesc3 => '每次您打开或恢复 Aspend 时，它都会自动扫描历史记录以查找您不在期间错过的交易。';

  @override
  String get howItWorksTitle4 => '4.终极隐私锁';

  @override
  String get howItWorksDesc4 => '没有服务器，没有网络请求。您的财务数据在加密的 Hive 存储中受到本地保护。';

  @override
  String get autoDetectionSetup => '自动检测设置';

  @override
  String get autoDetectionSetupDesc =>
      '为了自动检测交易，我们需要特定的权限。所有银行和交易应用程序都将受到安全监控。';

  @override
  String get notificationAccess => '1. 通知访问';

  @override
  String get notificationAccessDesc => '允许我们读取来自银行和支付应用程序的交易警报。';

  @override
  String get smsPermission => '2.短信权限';

  @override
  String get smsPermissionDesc => '启用从银行读取交易短信。';

  @override
  String get finishSetup => '完成设置';

  @override
  String get grant => '授予';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => '智能资金管理';

  @override
  String get budget => '预算';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ 超支 $amount';
  }

  @override
  String get balanceDetailsTitle => '余额详情';

  @override
  String get editBalanceTitle => '编辑余额';

  @override
  String get tapHoldToEditBalance => '按住可编辑余额';

  @override
  String get longPressBalanceCardHint => '长按主屏幕上的余额卡片';

  @override
  String get newBalanceLabel => '新百伦';

  @override
  String get viewAll => '查看全部';

  @override
  String get searchHint => '搜索类别或注释...';

  @override
  String get emptyWalletTitle => '你的钱包很安静';

  @override
  String get emptyWalletDesc => '首先手动添加交易或启用自动检测以轻松跟踪您的支出。';

  @override
  String get addPerson => '添加人员';

  @override
  String get addNewPerson => '添加新人';

  @override
  String get editPerson => '编辑人物';

  @override
  String get addPhoto => '添加照片';

  @override
  String get personName => '人名';

  @override
  String get youGet => '你拥有';

  @override
  String get youGive => '你借';

  @override
  String get youWillGet => '你将拥有';

  @override
  String get youWillGive => '你会借';

  @override
  String get noPeopleYet => '尚未添加人员';

  @override
  String get searchPeople => '搜人...';

  @override
  String get enterNameHint => '输入您想要跟踪交易的人员的姓名';

  @override
  String get updateDetailsHint => '更新此人的详细信息';

  @override
  String get expenses => '开支';

  @override
  String get history => '历史';

  @override
  String get overview => '概述';

  @override
  String get trends => '趋势';

  @override
  String get categories => '类别';

  @override
  String get noDataFound => '没有找到数据记录';

  @override
  String get appColor => '应用程序颜色';

  @override
  String get selectColor => '选择自定义应用程序颜色';

  @override
  String get welcomeTitle => '欢迎来到阿斯彭德跟踪器';

  @override
  String get welcomeSubtitle => '您的个人理财伴侣';

  @override
  String get welcomeDesc => '跟踪您的收入、支出并轻松管理您的资金。掌控您的财务目标。';

  @override
  String get smartTrackingTitle => '智能交易追踪';

  @override
  String get smartTrackingSubtitle => '整理你的财务';

  @override
  String get smartTrackingDesc => '对交易进行分类、添加注释并详细了解您的支出模式。';

  @override
  String get peopleTrackingTitle => '人对人追踪';

  @override
  String get peopleTrackingSubtitle => '管理共享费用';

  @override
  String get peopleTrackingDesc => '跟踪您欠下的钱或别人欠下的钱。非常适合室友、朋友和家人。';

  @override
  String get analyticsTitle => '美丽的分析';

  @override
  String get analyticsSubtitle => '可视化您的数据';

  @override
  String get analyticsDesc => '图表和图表可帮助您了解您的消费习惯和财务趋势。';

  @override
  String get offlineTitle => '完全离线';

  @override
  String get offlineSubtitle => '您的数据保持私密';

  @override
  String get offlineDesc => '您的所有财务数据都存储在您的本地设备上。无需互联网，完全隐私。';

  @override
  String get autoDetectTitle => '自动交易检测';

  @override
  String get autoDetectSubtitle => '智能自动化';

  @override
  String get autoDetectDesc => '自动检测银行通知中的交易。不再需要手动输入 - 您的交易会立即被捕获！';

  @override
  String get readyTitle => '准备好开始了吗？';

  @override
  String get readySubtitle => '让我们开始你的旅程';

  @override
  String get readyDesc => '你都准备好了！从今天开始跟踪您的财务状况并掌控您的资金。';

  @override
  String get settingUpApp => '正在设置您的应用程序...';

  @override
  String get skip => '跳过';

  @override
  String get next => '下一个';

  @override
  String get getStarted => '开始使用';

  @override
  String get requestMoney => '索要钱';

  @override
  String get requestMoneyTooltip => '通过 UPI 请求付款';

  @override
  String get generateQr => '生成支付二维码';

  @override
  String get sortByNameAZ => '姓名（A-Z）';

  @override
  String get sortByNameZA => '姓名（Z-A）';

  @override
  String get sortByBalanceHighest => '余额（最高）';

  @override
  String get sortByBalanceLowest => '余额（最低）';

  @override
  String get upiIdNotSet => '未为此人设置 UPI ID。请从编辑中添加它。';

  @override
  String get couldNotFindUpiApp => '找不到 UPI 支付应用';

  @override
  String get noTransactionsYet => '还没有交易';

  @override
  String get addFirstTransaction => '添加您与此人的第一笔交易';

  @override
  String get settleBalance => '结算余额';

  @override
  String settleBalanceDesc(String amount) {
    return '这将添加 $amount 的交易，使余额为零。继续？';
  }

  @override
  String get settle => '定居';

  @override
  String get deletePerson => '删除人员';

  @override
  String deletePersonDesc(String name) {
    return '您确定要删除$name吗？此操作无法撤消。';
  }

  @override
  String get deleteTransactionDesc => '您确定要删除此交易吗？';

  @override
  String get update => '更新';

  @override
  String get sortTransactionsBy => '交易排序依据';

  @override
  String get sortByDateRecent => '日期（最近）';

  @override
  String get sortByDateOldest => '日期（最早的）';

  @override
  String get sortByAmountHighest => '金额（最高）';

  @override
  String get sortByAmountLowest => '金额（最低）';

  @override
  String get rangeAll => '全部';

  @override
  String get rangeDay => '天';

  @override
  String get rangeWeek => '星期';

  @override
  String get rangeMonth => '月';

  @override
  String get rangeYear => '年';

  @override
  String get topCategory => '顶级类别';

  @override
  String get noSpending => '没有支出';

  @override
  String get avgDailySpend => '平均。每日消费';

  @override
  String get perDay => '每天';

  @override
  String get monitoredApps => '受监控的应用程序';

  @override
  String get searchAppsHint => '搜索支付或银行应用程序...';

  @override
  String get noEligibleApps => '找不到符合条件的应用程序';

  @override
  String get noAppsMatchSearch => '没有与您的搜索匹配的应用';

  @override
  String get unknownApp => '未知应用程序';

  @override
  String errorLoadingApps(String error) {
    return '加载应用程序时出错：$error';
  }

  @override
  String selectedCount(int count) {
    return '$count 已选择';
  }

  @override
  String get ignorePatternsTooltip => '忽略模式';

  @override
  String get deleteSelectedTooltip => '删除所选内容';

  @override
  String get clearHistoryTitle => '清除历史记录？';

  @override
  String get clearHistoryDesc => '这将删除所有保存的检测日志。';

  @override
  String get clear => '清除';

  @override
  String get transactionDetected => '检测到交易';

  @override
  String get notificationLogged => '已记录通知';

  @override
  String get patternNotMatched => '模式不匹配';

  @override
  String get notificationDataTitle => '通知数据';

  @override
  String get copiedToClipboard => '消息已复制到剪贴板';

  @override
  String get copy => '复制';

  @override
  String get smsMessage => '短信';

  @override
  String get received => '已收到';

  @override
  String get paid => '有薪酬的';

  @override
  String get listeningHint => '听...';

  @override
  String get keepSpeaking => '继续说...';

  @override
  String get done => '完毕';

  @override
  String get fullBackupTitle => '完整备份 (JSON)';

  @override
  String get fullBackupDesc => '备份所有数据到JSON';

  @override
  String get restoreBackupTitle => '恢复备份 (JSON)';

  @override
  String get restoreBackupDesc => '从 JSON 备份恢复所有数据';

  @override
  String get backupCompleted => '备份完成！';

  @override
  String backupFailed(String error) {
    return '备份失败：$error';
  }

  @override
  String get restoreCompleted => '数据恢复成功！';

  @override
  String get restoreFailedCancelled => '恢复失败或取消';

  @override
  String restoreFailed(String error) {
    return '恢复失败：$error';
  }

  @override
  String get pdfExported => 'PDF导出成功！';

  @override
  String pdfExportFailed(String error) {
    return 'PDF 导出失败：$error';
  }

  @override
  String get peopleExported => '人员数据导出！';

  @override
  String peopleExportFailed(String error) {
    return '人员数据导出失败：$error';
  }

  @override
  String get allDataDeleted => '全部数据删除成功！';

  @override
  String get introReset => '简介重置成功！';

  @override
  String get selectRestoreMode => '选择恢复模式';

  @override
  String get restoreModeDesc => '选择在数据恢复期间如何处理现有事务记录。';

  @override
  String get mergeSkipDuplicates => '合并和跳过重复项';

  @override
  String get mergeSkipDesc => '避免重复条目，同时保留所有独特的新项目。';

  @override
  String get overwriteConflicts => '覆盖和更新冲突';

  @override
  String get overwriteConflictsDesc => '如果发生冲突，请用备份版本替换现有事务记录。';

  @override
  String get exportCsvTitle => '出口交易 (CSV)';

  @override
  String get exportCsvDesc => '将您的交易导出为 CSV';

  @override
  String get exportCsvSuccess => '导出成功！';

  @override
  String exportCsvFailed(String error) {
    return '导出失败：$error';
  }

  @override
  String get exportPeopleTitle => '导出人员数据';

  @override
  String get exportPeopleDesc => '备份人员交易';

  @override
  String get exportPdfTitle => '导出为 PDF';

  @override
  String get exportPdfDesc => '生成 PDF 报告';

  @override
  String get biometricNotSupported => '此设备不支持生物识别身份验证';

  @override
  String get noBiometricMethods => '没有可用的生物识别身份验证方式';

  @override
  String get authenticateReason => '进行身份验证以启用应用锁';

  @override
  String get authFailedAppLockNotEnabled => '身份验证失败。应用锁未启用。';

  @override
  String get appLockEnabledSuccess => '应用锁已成功启用';

  @override
  String get appLockDisabledSuccess => '应用锁已成功禁用';

  @override
  String get failedToEnableAppLock => '启用应用锁失败';

  @override
  String get failedToDisableAppLock => '禁用应用锁失败';

  @override
  String get pickAppColor => '选择应用颜色';

  @override
  String get reset => '重置';

  @override
  String get selectAction => '选择';

  @override
  String get appColorResetDefault => '应用颜色已重置为默认值！';

  @override
  String get deviceNotSupportBiometricsOrAuth => '该设备不支持生物识别或设备身份验证。';

  @override
  String get appLockEnabledDot => '应用锁已启用。';

  @override
  String get appLockDisabledDot => '应用锁已禁用。';

  @override
  String get cautionToUse => '使用须知';

  @override
  String get autoDetectCautionDesc =>
      '此功能并非100%完美，但可能有效。所有短信和通知数据均100%在您的设备本地处理，以确保绝对隐私。';

  @override
  String get autoDetectSettingSubtitle => '自动从通知中检测交易';

  @override
  String get permissionsRequiredNoAccess => '需要权限：未授予通知或短信访问权限。无法启用自动检测。';

  @override
  String get noteNotificationAccessMissing => '注意：缺少通知访问权限。仅短信检测可用。';

  @override
  String get noteSmsPermissionMissing => '注意：缺少短信权限。仅通知检测可用。';

  @override
  String get autoDetectionEnabledExclaim => '自动检测已启用！';

  @override
  String get autoDetectionDisabledExclaim => '自动检测已禁用！';

  @override
  String get processRecentDataTitle => '处理近期数据';

  @override
  String get processRecentDataSubtitle => '扫描近期通知以查找交易';

  @override
  String get recentDataProcessed => '近期数据处理成功！';

  @override
  String get errorProcessingData => '处理数据时出错';

  @override
  String get testDetectionLogicTitle => '测试检测逻辑';

  @override
  String get testDetectionLogicSubtitle => '模拟一条通知以验证解析效果';

  @override
  String get showDetectionHistoryTitle => '显示检测历史记录';

  @override
  String get showDetectionHistorySubtitle => '查看已检测交易的详细日志';

  @override
  String get autoDeleteUndetectedTitle => '自动删除未检测到的记录';

  @override
  String get autoDeleteUndetectedSubtitle => '12小时后删除未检测到的项目';

  @override
  String get testParserDiagnosticTitle => '解析器诊断测试';

  @override
  String get testParserDiagnosticDesc => '输入示例通知文本，查看解析器的处理效果。';

  @override
  String get pasteNotificationHint => '在此粘贴通知文本...';

  @override
  String get statusBalanceSync => '余额同步';

  @override
  String get statusNoActionDetected => '未检测到任何操作';

  @override
  String get transactionType => '类型';

  @override
  String get resultLabelMerchant => '商户';

  @override
  String get resultLabelBank => '银行';

  @override
  String get balanceLabel => '余额';

  @override
  String get resultLabelConfidence => '置信度';

  @override
  String get unknown => '未知';

  @override
  String get general => '常规';

  @override
  String get notAvailable => '不适用';

  @override
  String get close => '关闭';

  @override
  String get parseText => '解析文本';

  @override
  String get deleteAllDataTitle => '删除所有数据';

  @override
  String get deleteAllDataWarningSubtitle => '⚠️ 此操作无法撤销';

  @override
  String get resetIntroTitle => '重置引导页';

  @override
  String get resetIntroSubtitle => '再次显示引导页';

  @override
  String get incomeCategories => '收入类别';

  @override
  String get incomeCategoriesDesc => '管理收入类别';

  @override
  String get expenseCategories => '支出类别';

  @override
  String get expenseCategoriesDesc => '管理支出类别';

  @override
  String get accountsTitle => '账户';

  @override
  String get accountsDesc => '管理您的账户';

  @override
  String get enterNamePlaceholder => '输入名称...';

  @override
  String get aboutAppSubtitle => '开发者、隐私、支持等信息';

  @override
  String get setMonthlySpendingLimit => '设置每月支出限额';

  @override
  String get joinPreviousMonthBalanceTitle => '合并上月余额';

  @override
  String get joinPreviousMonthBalanceDesc => '在当前总额中包含上月余额';

  @override
  String get setMonthlyBudgetTitle => '设置每月预算';

  @override
  String get budgetAmountLabel => '预算金额';

  @override
  String get budgetUpdated => '预算已更新！';

  @override
  String get confirmDeleteTitle => '确认删除';

  @override
  String get confirmDeleteAllDesc => '确定要删除所有交易并重置余额吗？此操作无法撤销。';

  @override
  String get deleteAllButton => '全部删除';

  @override
  String get failedDeleteAllData => '删除所有数据失败，请重试。';

  @override
  String get resetIntroConfirmDesc => '下次打开应用时将再次显示引导页。您的数据不会受到影响。';

  @override
  String editFieldTitle(String field) {
    return '编辑$field';
  }

  @override
  String enterFieldHint(String field) {
    return '输入$field';
  }

  @override
  String statusLabel(String status) {
    return '状态：$status';
  }

  @override
  String manageItemsTitle(String type) {
    return '管理$type';
  }

  @override
  String noItemsFound(String type) {
    return '未找到$type。';
  }

  @override
  String addItemButton(String type) {
    return '添加$type';
  }

  @override
  String editItemTitle(String type) {
    return '编辑$type';
  }

  @override
  String itemNameLabel(String type) {
    return '$type名称';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return '每月限额：$budget';
  }

  @override
  String failedResetIntro(String error) {
    return '重置引导页失败，请重试。\\n$error';
  }

  @override
  String get failedUpdateAutoDetection => '更新自动检测失败';

  @override
  String get actionCannotBeUndone => '此操作无法撤销。';

  @override
  String deleteTransactionsCountTitle(int count) {
    return '删除$count笔交易？';
  }

  @override
  String deletedTransactionsCount(int count) {
    return '已删除$count笔交易';
  }

  @override
  String get transactionHistoryTitle => '交易历史';

  @override
  String get upiIdMissingTitle => '缺少 UPI ID';

  @override
  String get upiIdMissingDesc => '请在设置中设置您的 UPI ID，以便通过二维码请求付款。';

  @override
  String get openSettings => '打开设置';

  @override
  String get recipientFallback => '收款人';

  @override
  String get paymentLinkCopied => '支付链接已复制！';

  @override
  String get linkButton => '链接';

  @override
  String get shareQr => '分享二维码';

  @override
  String get upiPaymentLinkSubject => 'UPI 支付链接';

  @override
  String requestingFrom(String name) {
    return '正在向$name请求';
  }

  @override
  String upiIdColonValue(String id) {
    return 'UPI ID：$id';
  }

  @override
  String failedShareQr(String error) {
    return '分享二维码图片失败：$error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return '通过 UPI 二维码向$name付款';
  }

  @override
  String get pleaseSelectPerson => '请选择一个人';

  @override
  String get amountInInr => '金额（印度卢比）';

  @override
  String get currency => '货币';

  @override
  String get selectCurrency => '选择货币';

  @override
  String get searchCurrency => '搜索货币';

  @override
  String get autoDetectCurrency => '自动检测货币';

  @override
  String get autoDetectCurrencyDesc => '根据您设备的地区自动设置';

  @override
  String get popularCurrencies => '常用';

  @override
  String get allCurrencies => '所有货币';

  @override
  String get noCurrencyFound => '未找到货币';

  @override
  String get requiredField => '必填';

  @override
  String get quickCategories => '快速类别';

  @override
  String get saveToPerson => '保存到某人';

  @override
  String get noPeopleCreateHint => '尚未添加任何人。请在“人员”部分创建人员。';

  @override
  String get selectPersonLabel => '选择人员';

  @override
  String get selectCategoryTitle => '选择类别';

  @override
  String get updateTransactionButton => '更新交易';

  @override
  String get saveTransactionButton => '保存交易';

  @override
  String linkedToRecord(String name) {
    return '已关联到$name的记录';
  }

  @override
  String selectItemTitle(String type) {
    return '选择$type';
  }

  @override
  String get personSingular => '人员';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get setupFailedRetry => '设置未能完成，请重试。';

  @override
  String get backButton => '返回';

  @override
  String get voiceInputExampleHint => '试着说\"晚餐花了500元\"';

  @override
  String get autoDetectionEnabledSuccess => '自动检测已成功启用！';

  @override
  String openingRequestQrFor(String name) {
    return '正在打开$name的请求二维码';
  }

  @override
  String get add => '添加';

  @override
  String get uncategorized => '未分类';

  @override
  String get timeLabel => '时间';

  @override
  String get statusColumnLabel => '状态';

  @override
  String get completedLabel => '已完成';

  @override
  String get notes => '备注';

  @override
  String get serviceLabel => '服务';

  @override
  String get refIdLabel => '参考编号';

  @override
  String get detectedViaLabel => '检测来源';

  @override
  String get attachmentsLabel => '附件';

  @override
  String get originalLogLabel => '原始日志';

  @override
  String get noNoteProvided => '未提供备注';

  @override
  String get tapToUnlock => '点击解锁';

  @override
  String get addPeopleEmptyDesc => '添加联系人以跟踪与他们的交易';

  @override
  String get noPeopleMatchSearch => '没有与您的搜索匹配的联系人';

  @override
  String get okay => '好的';

  @override
  String get confirm => '确认';

  @override
  String get ok => '确定';

  @override
  String get unexpectedErrorOccurred => '发生意外错误';

  @override
  String get autoDetectionActive => '自动检测已启用';

  @override
  String get unknownSource => '未知来源';

  @override
  String get noMessageContentAvailable => '无可用消息内容';

  @override
  String get addManually => '手动添加';

  @override
  String get detectedAsIncome => '已检测为收入';

  @override
  String get detectedAsExpense => '已检测为支出';

  @override
  String sourceColonValue(String source) {
    return '来源：$source';
  }

  @override
  String get sourceNotification => '通知';

  @override
  String get sourceSms => '短信';

  @override
  String get sourceRecheckHistory => '历史记录复检';

  @override
  String get sourceManualAddHistory => '手动添加（来自历史记录）';

  @override
  String get recentLabel => '最近';

  @override
  String get oldestLabel => '最早';

  @override
  String get highestLabel => '最高';

  @override
  String get lowestLabel => '最低';

  @override
  String get glassBlurEffectsTitle => '玻璃模糊效果';

  @override
  String get glassBlurEffectsSubtitle =>
      '为玻璃面板和对话框添加柔和的模糊效果——会占用更多处理性能，在旧设备上关闭可获得更流畅的体验。';

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
