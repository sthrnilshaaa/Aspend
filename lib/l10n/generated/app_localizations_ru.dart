// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'Разумные траты, упрощенные.';

  @override
  String get totalBalance => 'Общий баланс';

  @override
  String get income => 'Доход';

  @override
  String get expense => 'Расход';

  @override
  String get monthlyBudget => 'Ежемесячный бюджет';

  @override
  String get transactions => 'Транзакции';

  @override
  String get recentTransactions => 'Недавние транзакции';

  @override
  String get seeAll => 'Посмотреть все';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get theme => 'Тема';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get systemDefault => 'Системные настройки по умолчанию';

  @override
  String get adaptiveColor => 'Адаптивный цвет';

  @override
  String get customColor => 'Пользовательский цвет';

  @override
  String get backup => 'Резервное копирование и восстановление';

  @override
  String get export => 'Экспортировать данные';

  @override
  String get import => 'Импортировать данные';

  @override
  String get privacyPolicy => 'политика конфиденциальности';

  @override
  String get telegramSupport => 'Поддержка Телеграм';

  @override
  String get addTransaction => 'Добавить транзакцию';

  @override
  String get editTransaction => 'Редактировать транзакцию';

  @override
  String get deleteTransaction => 'Удалить транзакцию';

  @override
  String get amount => 'Количество';

  @override
  String get category => 'Категория';

  @override
  String get account => 'Счет';

  @override
  String get date => 'Дата';

  @override
  String get note => 'Примечание (необязательно)';

  @override
  String get save => 'Сохранять';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get search => 'Поиск транзакций...';

  @override
  String get noTransactions => 'Транзакции не найдены';

  @override
  String get voiceInput => 'Голосовой ввод';

  @override
  String get speechUnavailable => 'Распознавание речи недоступно';

  @override
  String get microPermissionDenied =>
      'Разрешение на использование микрофона отклонено';

  @override
  String get microPermissionTitle => 'Требуется доступ к микрофону';

  @override
  String get microPermissionDesc =>
      'Aspends требуется доступ к микрофону, чтобы вы могли вводить данные транзакций с помощью голосовых команд. Ваши голосовые данные полностью обрабатываются офлайн на вашем устройстве и никогда не отправляются и не передаются третьим лицам.';

  @override
  String get microPermissionGrant => 'Включить голос';

  @override
  String get appearance => 'Появление';

  @override
  String get security => 'Безопасность';

  @override
  String get autoDetection => 'Автоматическое обнаружение транзакций';

  @override
  String get backupExport => 'Резервное копирование и экспорт';

  @override
  String get dataManagement => 'Управление данными';

  @override
  String get budgetingBalance => 'Бюджетирование и баланс';

  @override
  String get customDropdowns => 'Пользовательские раскрывающиеся элементы';

  @override
  String get appInformation => 'Информация о приложении';

  @override
  String get developedBy => 'Разработано с ❤️ автором Sthrnilshaa';

  @override
  String get chooseTheme => 'Выберите предпочитаемую тему';

  @override
  String get appLock => 'Блокировка приложения';

  @override
  String get appLockDesc =>
      'Требовать аутентификацию устройства для открытия приложения';

  @override
  String get upiId => 'идентификатор УПИ';

  @override
  String get upiIdDesc =>
      'Установите свой идентификатор UPI для запросов денег';

  @override
  String get upiName => 'Отображаемое имя';

  @override
  String get upiNameDesc => 'Необязательно: имя, отображаемое в запросе UPI.';

  @override
  String get analytics => 'Аналитика';

  @override
  String get people => 'Люди';

  @override
  String get charts => 'Графики';

  @override
  String get sortBy => 'Сортировать по';

  @override
  String get holdToRecord => 'Удерживайте, чтобы записать транзакцию';

  @override
  String get couldNotFindAmount =>
      'Не удалось найти сумму. Попробуйте: «Потратил 500 на еду»';

  @override
  String savedAmount(String amount, String category) {
    return 'Сохранено $amount для $category';
  }

  @override
  String logsDeleted(int count) {
    return 'Удалено $count логов';
  }

  @override
  String patternsIgnored(int count) {
    return 'Постоянно игнорируемые шаблоны: $count';
  }

  @override
  String get recheckComplete => 'Повторная проверка завершена';

  @override
  String get aboutApp => 'О Аспенде';

  @override
  String get developerDesigner => 'Разработчик и дизайнер';

  @override
  String get leadDesigner => 'Ведущий дизайнер';

  @override
  String get developer => 'Разработчик';

  @override
  String get supportLegal => 'Поддержка и юридическая поддержка';

  @override
  String get privacyPolicyDesc =>
      'Прочтите наш документ о политике конфиденциальности';

  @override
  String get helpSupport => 'Помощь и поддержка';

  @override
  String get telegramSupportDesc =>
      'Присоединяйтесь к нашему Telegram для поддержки';

  @override
  String get projectInfo => 'Информация о проекте';

  @override
  String get openSource => 'Открытый исходный код';

  @override
  String get openSourceDesc => 'С гордостью открытый исходный код на GitHub';

  @override
  String get licenses => 'Лицензии с открытым исходным кодом';

  @override
  String get licensesDesc =>
      'Просмотр лицензий сторонних компонентов, используемых в приложении';

  @override
  String get rateApp => 'Ставка расходов';

  @override
  String get rateAppDesc => 'Поддержите нас, поставив 5-звездочный рейтинг';

  @override
  String get couldNotLaunchUrl => 'Не удалось открыть ссылку';

  @override
  String errorWithDetails(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get madeWithLove => 'Сделано с ❤️ ради лучших финансов';

  @override
  String get howAspendWorks => 'КАК РАБОТАЕТ АСПЕНД';

  @override
  String get howItWorksTitle1 => '1. Интеллектуальный перехват';

  @override
  String get howItWorksDesc1 =>
      'Безопасная фоновая служба, оптимизированная для работы от аккумулятора, прослушивает входящие SMS и банковские уведомления.';

  @override
  String get howItWorksTitle2 => '2. Локальный анализ без облака';

  @override
  String get howItWorksDesc2 =>
      'Умные оффлайн-алгоритмы мгновенно извлекают суммы, категории и продавцов — 100% на вашем устройстве.';

  @override
  String get howItWorksTitle3 => '3. Автономное автоматическое восстановление';

  @override
  String get howItWorksDesc3 =>
      'Каждый раз, когда вы открываете или возобновляете работу Aspend, он автоматически сканирует историю на предмет пропущенных транзакций во время вашего отсутствия.';

  @override
  String get howItWorksTitle4 => '4. Полная блокировка конфиденциальности';

  @override
  String get howItWorksDesc4 =>
      'Никаких серверов, никаких веб-запросов. Ваши финансовые данные защищены локально в зашифрованном хранилище Hive.';

  @override
  String get autoDetectionSetup => 'Настройка автоматического обнаружения';

  @override
  String get autoDetectionSetupDesc =>
      'Для автоматического обнаружения транзакций нам нужны определенные разрешения. Все банковские и транзакционные приложения будут надежно контролироваться.';

  @override
  String get notificationAccess => '1. Доступ к уведомлениям';

  @override
  String get notificationAccessDesc =>
      'Позволяет нам читать оповещения о транзакциях из банковских и платежных приложений.';

  @override
  String get smsPermission => '2. Разрешение по СМС';

  @override
  String get smsPermissionDesc =>
      'Позволяет читать транзакционные SMS от вашего банка.';

  @override
  String get finishSetup => 'Завершить настройку';

  @override
  String get grant => 'Грант';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'Умное управление деньгами';

  @override
  String get budget => 'Бюджет';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ Превышение на $amount';
  }

  @override
  String get balanceDetailsTitle => 'Детали баланса';

  @override
  String get editBalanceTitle => 'Изменить баланс';

  @override
  String get tapHoldToEditBalance =>
      'Нажмите и удерживайте, чтобы изменить баланс';

  @override
  String get longPressBalanceCardHint =>
      'Нажмите и удерживайте карточку баланса на главном экране';

  @override
  String get newBalanceLabel => 'Новый Баланс';

  @override
  String get viewAll => 'Посмотреть все';

  @override
  String get searchHint => 'Поиск по категориям или заметкам...';

  @override
  String get emptyWalletTitle => 'Ваш кошелек молчит';

  @override
  String get emptyWalletDesc =>
      'Начните с добавления транзакции вручную или включите автоматическое обнаружение, чтобы легко отслеживать свои расходы.';

  @override
  String get addPerson => 'Добавить человека';

  @override
  String get addNewPerson => 'Добавить нового человека';

  @override
  String get editPerson => 'Редактировать человека';

  @override
  String get addPhoto => 'Добавить фото';

  @override
  String get personName => 'Имя человека';

  @override
  String get youGet => 'Вы владеете';

  @override
  String get youGive => 'Вы берете взаймы';

  @override
  String get youWillGet => 'Вы будете владеть';

  @override
  String get youWillGive => 'Вы будете брать взаймы';

  @override
  String get noPeopleYet => 'Никто еще не добавил людей';

  @override
  String get searchPeople => 'Поиск людей...';

  @override
  String get enterNameHint =>
      'Введите имя человека, с которым вы хотите отслеживать транзакции';

  @override
  String get updateDetailsHint => 'Обновить данные этого человека';

  @override
  String get expenses => 'Затраты';

  @override
  String get history => 'История';

  @override
  String get overview => 'Обзор';

  @override
  String get trends => 'Тенденции';

  @override
  String get categories => 'Категории';

  @override
  String get noDataFound => 'Записи данных не найдены';

  @override
  String get appColor => 'Цвет приложения';

  @override
  String get selectColor => 'Выберите собственный цвет приложения';

  @override
  String get welcomeTitle => 'Добро пожаловать в Aspends Tracker';

  @override
  String get welcomeSubtitle => 'Ваш личный финансовый помощник';

  @override
  String get welcomeDesc =>
      'Отслеживайте свои доходы, расходы и с легкостью управляйте своими деньгами. Будьте в курсе своих финансовых целей.';

  @override
  String get smartTrackingTitle => 'Интеллектуальное отслеживание транзакций';

  @override
  String get smartTrackingSubtitle => 'Организуйте свои финансы';

  @override
  String get smartTrackingDesc =>
      'Классифицируйте транзакции, добавляйте примечания и получайте подробную информацию о своей структуре расходов.';

  @override
  String get peopleTrackingTitle => 'Индивидуальное отслеживание';

  @override
  String get peopleTrackingSubtitle => 'Управляйте общими расходами';

  @override
  String get peopleTrackingDesc =>
      'Отслеживайте деньги, которые вы должны или вам должны другие. Идеально подходит для соседей по комнате, друзей и семьи.';

  @override
  String get analyticsTitle => 'Красивая аналитика';

  @override
  String get analyticsSubtitle => 'Визуализируйте свои данные';

  @override
  String get analyticsDesc =>
      'Диаграммы и графики помогут вам понять ваши привычки расходования средств и финансовые тенденции.';

  @override
  String get offlineTitle => 'Полностью оффлайн';

  @override
  String get offlineSubtitle => 'Ваши данные остаются конфиденциальными';

  @override
  String get offlineDesc =>
      'Все ваши финансовые данные хранятся локально на вашем устройстве. Интернет не требуется, полная конфиденциальность.';

  @override
  String get autoDetectTitle => 'Автоматическое обнаружение транзакций';

  @override
  String get autoDetectSubtitle => 'Умный и автоматизированный';

  @override
  String get autoDetectDesc =>
      'Автоматически обнаруживайте транзакции из банковских уведомлений. Больше никакого ручного ввода — ваши транзакции фиксируются мгновенно!';

  @override
  String get readyTitle => 'Готовы начать?';

  @override
  String get readySubtitle => 'Давайте начнем ваше путешествие';

  @override
  String get readyDesc =>
      'Все готово! Начните отслеживать свои финансы и возьмите под контроль свои деньги уже сегодня.';

  @override
  String get settingUpApp => 'Настройка приложения...';

  @override
  String get skip => 'Пропускать';

  @override
  String get next => 'Следующий';

  @override
  String get getStarted => 'Начать';

  @override
  String get requestMoney => 'Запросить деньги';

  @override
  String get requestMoneyTooltip => 'Запросить деньги через UPI';

  @override
  String get generateQr => 'Создать платежный QR-код';

  @override
  String get sortByNameAZ => 'Имя (А-Я)';

  @override
  String get sortByNameZA => 'Имя (Я-А)';

  @override
  String get sortByBalanceHighest => 'Баланс (самый высокий)';

  @override
  String get sortByBalanceLowest => 'Баланс (самый низкий)';

  @override
  String get upiIdNotSet =>
      'Идентификатор UPI не установлен для этого человека. Пожалуйста, добавьте его из редактирования.';

  @override
  String get couldNotFindUpiApp => 'Не удалось найти платежное приложение UPI.';

  @override
  String get noTransactionsYet => 'Транзакций пока нет';

  @override
  String get addFirstTransaction =>
      'Добавьте свою первую транзакцию с человеком';

  @override
  String get settleBalance => 'Погасить баланс';

  @override
  String settleBalanceDesc(String amount) {
    return 'Это добавит транзакцию на сумму $amount чтобы свести баланс к нулю. Продолжать?';
  }

  @override
  String get settle => 'Решить';

  @override
  String get deletePerson => 'Удалить человека';

  @override
  String deletePersonDesc(String name) {
    return 'Вы уверены, что хотите удалить $name? Это действие невозможно отменить.';
  }

  @override
  String get deleteTransactionDesc =>
      'Вы уверены, что хотите удалить эту транзакцию?';

  @override
  String get update => 'Обновлять';

  @override
  String get sortTransactionsBy => 'Сортировать транзакции по';

  @override
  String get sortByDateRecent => 'Дата (недавняя)';

  @override
  String get sortByDateOldest => 'Дата (самая старая)';

  @override
  String get sortByAmountHighest => 'Сумма (максимальная)';

  @override
  String get sortByAmountLowest => 'Сумма (самая низкая)';

  @override
  String get rangeAll => 'Все';

  @override
  String get rangeDay => 'День';

  @override
  String get rangeWeek => 'Неделя';

  @override
  String get rangeMonth => 'Месяц';

  @override
  String get rangeYear => 'Год';

  @override
  String get topCategory => 'Высшая категория';

  @override
  String get noSpending => 'Нет расходов';

  @override
  String get avgDailySpend => 'Среднее Ежедневные расходы';

  @override
  String get perDay => 'в день';

  @override
  String get monitoredApps => 'Контролируемые приложения';

  @override
  String get searchAppsHint => 'Поиск платежных или банковских приложений...';

  @override
  String get noEligibleApps => 'Подходящие приложения не найдены';

  @override
  String get noAppsMatchSearch =>
      'Нет приложений, соответствующих вашему запросу';

  @override
  String get unknownApp => 'Неизвестное приложение';

  @override
  String errorLoadingApps(String error) {
    return 'Ошибка загрузки приложений: $error';
  }

  @override
  String selectedCount(int count) {
    return '$count Выбрано';
  }

  @override
  String get ignorePatternsTooltip => 'Игнорировать шаблоны';

  @override
  String get deleteSelectedTooltip => 'Удалить выбранное';

  @override
  String get clearHistoryTitle => 'Очистить историю?';

  @override
  String get clearHistoryDesc =>
      'При этом будут удалены все сохраненные журналы обнаружения.';

  @override
  String get clear => 'Прозрачный';

  @override
  String get transactionDetected => 'Транзакция обнаружена';

  @override
  String get notificationLogged => 'Уведомление зарегистрировано';

  @override
  String get patternNotMatched => 'Шаблон не совпадает';

  @override
  String get notificationDataTitle => 'ДАННЫЕ УВЕДОМЛЕНИЯ';

  @override
  String get copiedToClipboard => 'Сообщение скопировано в буфер обмена';

  @override
  String get copy => 'КОПИРОВАТЬ';

  @override
  String get smsMessage => 'SMS-сообщение';

  @override
  String get received => 'Полученный';

  @override
  String get paid => 'Оплаченный';

  @override
  String get listeningHint => 'Слушаю...';

  @override
  String get keepSpeaking => 'Продолжайте говорить...';

  @override
  String get done => 'Сделанный';

  @override
  String get fullBackupTitle => 'Полное резервное копирование (JSON)';

  @override
  String get fullBackupDesc => 'Резервное копирование всех данных в JSON';

  @override
  String get restoreBackupTitle => 'Восстановить резервную копию (JSON)';

  @override
  String get restoreBackupDesc =>
      'Восстановить все данные из резервной копии JSON';

  @override
  String get backupCompleted => 'Резервное копирование завершено!';

  @override
  String backupFailed(String error) {
    return 'Не удалось выполнить резервное копирование: $error';
  }

  @override
  String get restoreCompleted => 'Данные успешно восстановлены!';

  @override
  String get restoreFailedCancelled =>
      'Восстановление не выполнено или отменено';

  @override
  String restoreFailed(String error) {
    return 'Не удалось восстановить: $error';
  }

  @override
  String get pdfExported => 'PDF успешно экспортирован!';

  @override
  String pdfExportFailed(String error) {
    return 'Не удалось экспортировать PDF: $error';
  }

  @override
  String get peopleExported => 'Данные о людях экспортированы!';

  @override
  String peopleExportFailed(String error) {
    return 'Не удалось экспортировать данные о людях: $error';
  }

  @override
  String get allDataDeleted => 'Все данные успешно удалены!';

  @override
  String get introReset => 'Интро сброшено успешно!';

  @override
  String get selectRestoreMode => 'Выберите режим восстановления';

  @override
  String get restoreModeDesc =>
      'Выберите, как обрабатывать существующие записи транзакций во время восстановления данных.';

  @override
  String get mergeSkipDuplicates => 'Объединить и пропустить дубликаты';

  @override
  String get mergeSkipDesc =>
      'Избегайте дублирования записей, сохраняя при этом все уникальные новые элементы.';

  @override
  String get overwriteConflicts => 'Конфликты перезаписи и обновления';

  @override
  String get overwriteConflictsDesc =>
      'Замените существующие записи транзакций резервными версиями в случае конфликтов.';

  @override
  String get exportCsvTitle => 'Экспортные транзакции (CSV)';

  @override
  String get exportCsvDesc => 'Экспортируйте свои транзакции в CSV';

  @override
  String get exportCsvSuccess => 'Экспорт успешно завершен!';

  @override
  String exportCsvFailed(String error) {
    return 'Не удалось экспортировать: $error';
  }

  @override
  String get exportPeopleTitle => 'Экспорт данных о людях';

  @override
  String get exportPeopleDesc => 'Резервное копирование транзакций людей';

  @override
  String get exportPdfTitle => 'Экспортировать в PDF';

  @override
  String get exportPdfDesc => 'Создание отчетов в формате PDF';

  @override
  String get biometricNotSupported =>
      'Биометрическая аутентификация не поддерживается на этом устройстве';

  @override
  String get noBiometricMethods =>
      'Нет доступных методов биометрической аутентификации';

  @override
  String get authenticateReason =>
      'Пройдите аутентификацию, чтобы включить блокировку приложения';

  @override
  String get authFailedAppLockNotEnabled =>
      'Аутентификация не удалась. Блокировка приложения не включена.';

  @override
  String get appLockEnabledSuccess => 'Блокировка приложения успешно включена';

  @override
  String get appLockDisabledSuccess =>
      'Блокировка приложения успешно отключена';

  @override
  String get failedToEnableAppLock =>
      'Не удалось включить блокировку приложения';

  @override
  String get failedToDisableAppLock =>
      'Не удалось отключить блокировку приложения';

  @override
  String get pickAppColor => 'Выберите цвет приложения';

  @override
  String get reset => 'Сбросить';

  @override
  String get selectAction => 'Выбрать';

  @override
  String get appColorResetDefault => 'Цвет приложения сброшен на стандартный!';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'Устройство не поддерживает биометрию или аутентификацию устройства.';

  @override
  String get appLockEnabledDot => 'Блокировка приложения включена.';

  @override
  String get appLockDisabledDot => 'Блокировка приложения отключена.';

  @override
  String get cautionToUse => 'Используйте с осторожностью';

  @override
  String get autoDetectCautionDesc =>
      'Эта функция не идеальна на 100%, но может работать. Все данные SMS и уведомлений обрабатываются на 100% локально на вашем устройстве для полной конфиденциальности.';

  @override
  String get autoDetectSettingSubtitle =>
      'Автоматически определять транзакции из уведомлений';

  @override
  String get permissionsRequiredNoAccess =>
      'Требуются разрешения: доступ к уведомлениям или SMS не предоставлен. Автоопределение включить нельзя.';

  @override
  String get noteNotificationAccessMissing =>
      'Примечание: нет доступа к уведомлениям. Будет работать только определение по SMS.';

  @override
  String get noteSmsPermissionMissing =>
      'Примечание: нет разрешения на SMS. Будет работать только определение по уведомлениям.';

  @override
  String get autoDetectionEnabledExclaim => 'Автоопределение включено!';

  @override
  String get autoDetectionDisabledExclaim => 'Автоопределение отключено!';

  @override
  String get processRecentDataTitle => 'Обработать последние данные';

  @override
  String get processRecentDataSubtitle =>
      'Сканировать недавние уведомления на предмет транзакций';

  @override
  String get recentDataProcessed => 'Последние данные успешно обработаны!';

  @override
  String get errorProcessingData => 'Ошибка обработки данных';

  @override
  String get testDetectionLogicTitle => 'Тест логики обнаружения';

  @override
  String get testDetectionLogicSubtitle =>
      'Смоделируйте уведомление, чтобы проверить разбор';

  @override
  String get showDetectionHistoryTitle => 'Показать историю обнаружения';

  @override
  String get showDetectionHistorySubtitle =>
      'Просмотр подробных журналов обнаруженных транзакций';

  @override
  String get autoDeleteUndetectedTitle => 'Автоудаление необнаруженной истории';

  @override
  String get autoDeleteUndetectedSubtitle =>
      'Удалять необнаруженные записи через 12 часов';

  @override
  String get testParserDiagnosticTitle => 'Диагностика тестового парсера';

  @override
  String get testParserDiagnosticDesc =>
      'Введите пример текста уведомления, чтобы увидеть, как его обрабатывает наш парсер.';

  @override
  String get pasteNotificationHint => 'Вставьте текст уведомления сюда...';

  @override
  String get statusBalanceSync => 'Синхронизация баланса';

  @override
  String get statusNoActionDetected => 'Действие не обнаружено';

  @override
  String get transactionType => 'Тип';

  @override
  String get resultLabelMerchant => 'Продавец';

  @override
  String get resultLabelBank => 'Банк';

  @override
  String get balanceLabel => 'Баланс';

  @override
  String get resultLabelConfidence => 'Уверенность';

  @override
  String get unknown => 'Неизвестно';

  @override
  String get general => 'Общее';

  @override
  String get notAvailable => 'Н/Д';

  @override
  String get close => 'Закрыть';

  @override
  String get parseText => 'Разобрать текст';

  @override
  String get deleteAllDataTitle => 'Удалить все данные';

  @override
  String get deleteAllDataWarningSubtitle =>
      '⚠️ Это действие невозможно отменить';

  @override
  String get resetIntroTitle => 'Сбросить вступление';

  @override
  String get resetIntroSubtitle => 'Показать вступительные экраны снова';

  @override
  String get incomeCategories => 'Категории доходов';

  @override
  String get incomeCategoriesDesc => 'Управление категориями доходов';

  @override
  String get expenseCategories => 'Категории расходов';

  @override
  String get expenseCategoriesDesc => 'Управление категориями расходов';

  @override
  String get accountsTitle => 'Счета';

  @override
  String get accountsDesc => 'Управление вашими счетами';

  @override
  String get enterNamePlaceholder => 'Введите имя...';

  @override
  String get aboutAppSubtitle =>
      'Разработчик, конфиденциальность, поддержка и многое другое';

  @override
  String get setMonthlySpendingLimit => 'Установите месячный лимит расходов';

  @override
  String get joinPreviousMonthBalanceTitle =>
      'Учитывать баланс предыдущего месяца';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'Включить баланс предыдущего месяца в текущий итог';

  @override
  String get setMonthlyBudgetTitle => 'Установить месячный бюджет';

  @override
  String get budgetAmountLabel => 'Сумма бюджета';

  @override
  String get budgetUpdated => 'Бюджет обновлён!';

  @override
  String get confirmDeleteTitle => 'Подтвердите удаление';

  @override
  String get confirmDeleteAllDesc =>
      'Вы уверены, что хотите удалить все транзакции и сбросить баланс? Это действие невозможно отменить.';

  @override
  String get deleteAllButton => 'Удалить всё';

  @override
  String get failedDeleteAllData =>
      'Не удалось удалить все данные. Попробуйте снова.';

  @override
  String get resetIntroConfirmDesc =>
      'Вступительные экраны появятся снова при следующем открытии приложения. Ваши данные останутся без изменений.';

  @override
  String editFieldTitle(String field) {
    return 'Изменить $field';
  }

  @override
  String enterFieldHint(String field) {
    return 'Введите $field';
  }

  @override
  String statusLabel(String status) {
    return 'Статус: $status';
  }

  @override
  String manageItemsTitle(String type) {
    return 'Управление: $type';
  }

  @override
  String noItemsFound(String type) {
    return '$type не найдено.';
  }

  @override
  String addItemButton(String type) {
    return 'Добавить $type';
  }

  @override
  String editItemTitle(String type) {
    return 'Изменить $type';
  }

  @override
  String itemNameLabel(String type) {
    return 'Название: $type';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'Месячный лимит: $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'Не удалось сбросить вступление. Попробуйте снова.\\n$error';
  }

  @override
  String get failedUpdateAutoDetection => 'Не удалось обновить автоопределение';

  @override
  String get actionCannotBeUndone => 'Это действие невозможно отменить.';

  @override
  String deleteTransactionsCountTitle(int count) {
    return 'Удалить $count транзакций?';
  }

  @override
  String deletedTransactionsCount(int count) {
    return 'Удалено $count транзакций';
  }

  @override
  String get transactionHistoryTitle => 'История транзакций';

  @override
  String get upiIdMissingTitle => 'Отсутствует UPI ID';

  @override
  String get upiIdMissingDesc =>
      'Укажите UPI ID в настройках, чтобы запрашивать деньги через QR-код.';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get recipientFallback => 'Получатель';

  @override
  String get paymentLinkCopied => 'Ссылка на оплату скопирована!';

  @override
  String get linkButton => 'Ссылка';

  @override
  String get shareQr => 'Поделиться QR-кодом';

  @override
  String get upiPaymentLinkSubject => 'Ссылка на оплату UPI';

  @override
  String requestingFrom(String name) {
    return 'Запрос от $name';
  }

  @override
  String upiIdColonValue(String id) {
    return 'Идентификатор UPI: $id';
  }

  @override
  String failedShareQr(String error) {
    return 'Не удалось поделиться изображением QR: $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return 'Оплата через UPI QR для $name';
  }

  @override
  String get pleaseSelectPerson => 'Пожалуйста, выберите человека';

  @override
  String get amountInInr => 'Сумма в INR';

  @override
  String get currency => 'Валюта';

  @override
  String get selectCurrency => 'Выбрать валюту';

  @override
  String get searchCurrency => 'Поиск валюты';

  @override
  String get autoDetectCurrency => 'Автоопределение валюты';

  @override
  String get autoDetectCurrencyDesc =>
      'Автоматически соответствует региону вашего устройства';

  @override
  String get popularCurrencies => 'Популярные';

  @override
  String get allCurrencies => 'Все валюты';

  @override
  String get noCurrencyFound => 'Валюта не найдена';

  @override
  String get requiredField => 'Обязательно';

  @override
  String get quickCategories => 'Быстрые категории';

  @override
  String get saveToPerson => 'Сохранить у человека';

  @override
  String get noPeopleCreateHint =>
      'Люди ещё не добавлены. Создайте людей в разделе «Люди».';

  @override
  String get selectPersonLabel => 'Выберите человека';

  @override
  String get selectCategoryTitle => 'Выберите категорию';

  @override
  String get updateTransactionButton => 'Обновить транзакцию';

  @override
  String get saveTransactionButton => 'Сохранить транзакцию';

  @override
  String linkedToRecord(String name) {
    return 'Связано с записью $name';
  }

  @override
  String selectItemTitle(String type) {
    return 'Выберите $type';
  }

  @override
  String get personSingular => 'Человек';

  @override
  String get error => 'Ошибка';

  @override
  String get retry => 'Повторить';

  @override
  String get setupFailedRetry =>
      'Не удалось завершить настройку. Попробуйте снова.';

  @override
  String get backButton => 'Назад';

  @override
  String get voiceInputExampleHint =>
      'Скажите что-то вроде «Потратил 500 на ужин»';

  @override
  String get autoDetectionEnabledSuccess => 'Автоопределение успешно включено!';

  @override
  String openingRequestQrFor(String name) {
    return 'Открытие QR-запроса для $name';
  }

  @override
  String get add => 'Добавить';

  @override
  String get uncategorized => 'Без категории';

  @override
  String get timeLabel => 'Время';

  @override
  String get statusColumnLabel => 'Статус';

  @override
  String get completedLabel => 'Завершено';

  @override
  String get notes => 'Заметки';

  @override
  String get serviceLabel => 'Сервис';

  @override
  String get refIdLabel => 'ID ссылки';

  @override
  String get detectedViaLabel => 'Обнаружено через';

  @override
  String get attachmentsLabel => 'Вложения';

  @override
  String get originalLogLabel => 'Исходный журнал';

  @override
  String get noNoteProvided => 'Заметка не указана';

  @override
  String get tapToUnlock => 'Нажмите, чтобы разблокировать';

  @override
  String get addPeopleEmptyDesc =>
      'Добавьте людей, чтобы отслеживать транзакции с ними';

  @override
  String get noPeopleMatchSearch => 'Нет людей, соответствующих вашему запросу';

  @override
  String get okay => 'Хорошо';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get ok => 'ОК';

  @override
  String get unexpectedErrorOccurred => 'Произошла непредвиденная ошибка';

  @override
  String get autoDetectionActive => 'Автоопределение активно';

  @override
  String get unknownSource => 'Неизвестный источник';

  @override
  String get noMessageContentAvailable => 'Содержимое сообщения недоступно';

  @override
  String get addManually => 'Добавить вручную';

  @override
  String get detectedAsIncome => 'Определено как доход';

  @override
  String get detectedAsExpense => 'Определено как расход';

  @override
  String sourceColonValue(String source) {
    return 'Источник: $source';
  }

  @override
  String get sourceNotification => 'Уведомление';

  @override
  String get sourceSms => 'SMS';

  @override
  String get sourceRecheckHistory => 'Повторная проверка истории';

  @override
  String get sourceManualAddHistory => 'Добавлено вручную (из истории)';

  @override
  String get recentLabel => 'Недавние';

  @override
  String get oldestLabel => 'Старые';

  @override
  String get highestLabel => 'Наибольшая';

  @override
  String get lowestLabel => 'Наименьшая';

  @override
  String get glassBlurEffectsTitle => 'Эффекты размытия стекла';

  @override
  String get glassBlurEffectsSubtitle =>
      'Мягкое размытие на стеклянных панелях и в диалоговых окнах — требует больше вычислительной мощности. Отключите на старых устройствах для более плавной работы.';

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
