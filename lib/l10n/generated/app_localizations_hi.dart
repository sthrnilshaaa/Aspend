// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'स्मार्ट खर्च, सरलीकृत।';

  @override
  String get totalBalance => 'कुल शेष';

  @override
  String get income => 'आय';

  @override
  String get expense => 'व्यय';

  @override
  String get monthlyBudget => 'मासिक बजट';

  @override
  String get transactions => 'लेनदेन';

  @override
  String get recentTransactions => 'हाल के लेनदेन';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get theme => 'विषय';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get systemDefault => 'प्रणालीगत चूक';

  @override
  String get adaptiveColor => 'अनुकूली रंग';

  @override
  String get customColor => 'कस्टम रंग';

  @override
  String get backup => 'बैकअप और पुनर्स्थापना';

  @override
  String get export => 'डेटा निर्यात करें';

  @override
  String get import => 'डेटा आयात करें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get telegramSupport => 'टेलीग्राम समर्थन';

  @override
  String get addTransaction => 'लेन-देन जोड़ें';

  @override
  String get editTransaction => 'लेन-देन संपादित करें';

  @override
  String get deleteTransaction => 'लेन-देन हटाएँ';

  @override
  String get amount => 'मात्रा';

  @override
  String get category => 'वर्ग';

  @override
  String get account => 'खाता';

  @override
  String get date => 'तारीख';

  @override
  String get note => 'नोट (वैकल्पिक)';

  @override
  String get save => 'बचाना';

  @override
  String get cancel => 'रद्द करना';

  @override
  String get delete => 'मिटाना';

  @override
  String get search => 'लेनदेन खोजें...';

  @override
  String get noTransactions => 'कोई परिणाम नहीं मिले';

  @override
  String get voiceInput => 'ध्वनि इनपुट';

  @override
  String get speechUnavailable => 'वाक् पहचान अनुपलब्ध';

  @override
  String get microPermissionDenied => 'माइक्रोफ़ोन की अनुमति अस्वीकृत';

  @override
  String get microPermissionTitle => 'माइक्रोफ़ोन एक्सेस आवश्यक है';

  @override
  String get microPermissionDesc =>
      'Aspends को आपको वॉइस कमांड के ज़रिए लेन-देन का विवरण दर्ज करने देने के लिए माइक्रोफ़ोन एक्सेस की आवश्यकता है। आपकी वॉइस इनपुट पूरी तरह से आपके डिवाइस पर ऑफ़लाइन प्रोसेस की जाती है और इन्हें कभी भी अपलोड या साझा नहीं किया जाता।';

  @override
  String get microPermissionGrant => 'वॉइस सक्षम करें';

  @override
  String get appearance => 'उपस्थिति';

  @override
  String get security => 'सुरक्षा';

  @override
  String get autoDetection => 'ऑटो लेनदेन का पता लगाना';

  @override
  String get backupExport => 'बैकअप और निर्यात';

  @override
  String get dataManagement => 'डेटा प्रबंधन';

  @override
  String get budgetingBalance => 'बजट और संतुलन';

  @override
  String get customDropdowns => 'कस्टम ड्रॉपडाउन आइटम';

  @override
  String get appInformation => 'ऐप की जानकारी';

  @override
  String get developedBy => 'Sthrnilshaa द्वारा ❤️ के साथ विकसित किया गया';

  @override
  String get chooseTheme => 'अपनी पसंदीदा थीम चुनें';

  @override
  String get appLock => 'ऐप लॉक';

  @override
  String get appLockDesc => 'ऐप खोलने के लिए डिवाइस प्रमाणीकरण की आवश्यकता है';

  @override
  String get upiId => 'यूपीआई आईडी';

  @override
  String get upiIdDesc => 'धन अनुरोधों के लिए अपनी UPI आईडी सेट करें';

  @override
  String get upiName => 'प्रदर्शित होने वाला नाम';

  @override
  String get upiNameDesc => 'वैकल्पिक: UPI अनुरोध में दिखाया गया नाम';

  @override
  String get analytics => 'एनालिटिक्स';

  @override
  String get people => 'लोग';

  @override
  String get charts => 'चार्ट';

  @override
  String get sortBy => 'इसके अनुसार क्रमबद्ध करें';

  @override
  String get holdToRecord => 'लेन-देन रिकॉर्ड करने के लिए होल्ड करें';

  @override
  String get couldNotFindAmount =>
      'राशि नहीं मिल सकी. आज़माएँ: \'भोजन पर 500 खर्च किए\'';

  @override
  String savedAmount(String amount, String category) {
    return '$amount को $category के लिए सहेजा गया';
  }

  @override
  String logsDeleted(int count) {
    return '$count लॉग हटा दिए गए';
  }

  @override
  String patternsIgnored(int count) {
    return '$count पैटर्न को स्थायी रूप से अनदेखा कर दिया गया';
  }

  @override
  String get recheckComplete => 'पुन: जाँच पूर्ण करें';

  @override
  String get aboutApp => 'Aspendes के बारे में';

  @override
  String get developerDesigner => 'डेवलपर एवं डिज़ाइनर';

  @override
  String get leadDesigner => 'लीड डिज़ाइनर';

  @override
  String get developer => 'डेवलपर';

  @override
  String get supportLegal => 'समर्थन एवं कानूनी';

  @override
  String get privacyPolicyDesc => 'हमारा गोपनीयता नीति दस्तावेज़ पढ़ें';

  @override
  String get helpSupport => 'सहायता एवं सहायता';

  @override
  String get telegramSupportDesc => 'सहायता के लिए हमारे टेलीग्राम से जुड़ें';

  @override
  String get projectInfo => 'परियोजना की जानकारी';

  @override
  String get openSource => 'खुला स्त्रोत';

  @override
  String get openSourceDesc => 'GitHub पर गर्व से खुला स्रोत';

  @override
  String get licenses => 'ओपन सोर्स लाइसेंस';

  @override
  String get licensesDesc =>
      'इस ऐप में इस्तेमाल किए गए थर्ड-पार्टी लाइसेंस देखें';

  @override
  String get rateApp => 'दर निर्भर करती है';

  @override
  String get rateAppDesc => '5-स्टार रेटिंग के साथ हमारा समर्थन करें';

  @override
  String get couldNotLaunchUrl => 'लिंक नहीं खोला जा सका';

  @override
  String errorWithDetails(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get madeWithLove => 'बेहतर वित्त के लिए ❤️ से बनाया गया';

  @override
  String get howAspendWorks => 'एस्पेंड कैसे काम करता है';

  @override
  String get howItWorksTitle1 => '1. बुद्धिमान अवरोधन';

  @override
  String get howItWorksDesc1 =>
      'एक सुरक्षित, बैटरी-अनुकूलित पृष्ठभूमि सेवा आने वाले एसएमएस और बैंकिंग सूचनाओं को सुनती है।';

  @override
  String get howItWorksTitle2 => '2. जीरो-क्लाउड स्थानीय पार्सिंग';

  @override
  String get howItWorksDesc2 =>
      'स्मार्ट ऑफ़लाइन एल्गोरिदम आपके डिवाइस पर रकम, श्रेणियां और व्यापारियों को तुरंत निकालता है—100%।';

  @override
  String get howItWorksTitle3 => '3. ऑफलाइन ऑटो-रिकवरी';

  @override
  String get howItWorksDesc3 =>
      'हर बार जब आप एस्पेंड खोलते हैं या फिर से शुरू करते हैं, तो यह आपकी अनुपस्थिति के दौरान छूटे हुए लेनदेन के इतिहास को स्वचालित रूप से स्कैन करता है।';

  @override
  String get howItWorksTitle4 => '4. अल्टीमेट प्राइवेसी लॉक';

  @override
  String get howItWorksDesc4 =>
      'कोई सर्वर नहीं, कोई वेब अनुरोध नहीं। आपका वित्तीय डेटा एन्क्रिप्टेड हाइव स्टोरेज के अंदर स्थानीय रूप से सुरक्षित है।';

  @override
  String get autoDetectionSetup => 'ऑटो-डिटेक्शन सेटअप';

  @override
  String get autoDetectionSetupDesc =>
      'लेनदेन का स्वचालित रूप से पता लगाने के लिए, हमें विशिष्ट अनुमतियों की आवश्यकता होती है। सभी बैंकिंग और लेनदेन ऐप्स की सुरक्षित निगरानी की जाएगी।';

  @override
  String get notificationAccess => '1. अधिसूचना पहुंच';

  @override
  String get notificationAccessDesc =>
      'हमें बैंक और भुगतान ऐप्स से लेनदेन अलर्ट पढ़ने की अनुमति देता है।';

  @override
  String get smsPermission => '2. एसएमएस अनुमति';

  @override
  String get smsPermissionDesc =>
      'आपके बैंक से लेनदेन एसएमएस पढ़ने में सक्षम बनाता है।';

  @override
  String get finishSetup => 'सेटअप समाप्त करें';

  @override
  String get grant => 'अनुदान';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'स्मार्ट मनी मैनेजमेंट';

  @override
  String get budget => 'बजट';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ $amount अधिक खर्च हो गया';
  }

  @override
  String get balanceDetailsTitle => 'शेष विवरण';

  @override
  String get editBalanceTitle => 'संतुलन संपादित करें';

  @override
  String get tapHoldToEditBalance => 'बैलेंस संपादित करने के लिए दबाकर रखें';

  @override
  String get longPressBalanceCardHint =>
      'होम स्क्रीन पर बैलेंस कार्ड को देर तक दबाएं';

  @override
  String get newBalanceLabel => 'नया शेष';

  @override
  String get viewAll => 'सभी को देखें';

  @override
  String get searchHint => 'श्रेणियाँ या नोट्स खोजें...';

  @override
  String get emptyWalletTitle => 'आपका बटुआ शांत है';

  @override
  String get emptyWalletDesc =>
      'लेन-देन को मैन्युअल रूप से जोड़कर प्रारंभ करें या अपने खर्च को आसानी से ट्रैक करने के लिए ऑटो-डिटेक्शन सक्षम करें।';

  @override
  String get addPerson => 'व्यक्ति जोड़ें';

  @override
  String get addNewPerson => 'नया व्यक्ति जोड़ें';

  @override
  String get editPerson => 'व्यक्ति संपादित करें';

  @override
  String get addPhoto => 'तस्वीर जोड़ो';

  @override
  String get personName => 'व्यक्ति का नाम';

  @override
  String get youGet => 'आपका अपना';

  @override
  String get youGive => 'आप उधार लें';

  @override
  String get youWillGet => 'आपका स्वामित्व होगा';

  @override
  String get youWillGive => 'आप उधार लेंगे';

  @override
  String get noPeopleYet => 'अभी तक कोई व्यक्ति नहीं जोड़ा गया';

  @override
  String get searchPeople => 'लोगों को खोजें...';

  @override
  String get enterNameHint =>
      'उस व्यक्ति का नाम दर्ज करें जिसके साथ आप लेनदेन ट्रैक करना चाहते हैं';

  @override
  String get updateDetailsHint => 'इस व्यक्ति का विवरण अपडेट करें';

  @override
  String get expenses => 'खर्च';

  @override
  String get history => 'इतिहास';

  @override
  String get overview => 'सिंहावलोकन';

  @override
  String get trends => 'प्रवृत्तियों';

  @override
  String get categories => 'श्रेणियाँ';

  @override
  String get noDataFound => 'कोई डेटा रिकॉर्ड नहीं मिला';

  @override
  String get appColor => 'ऐप का रंग';

  @override
  String get selectColor => 'एक कस्टम ऐप रंग चुनें';

  @override
  String get welcomeTitle => 'एस्पेंड्स ट्रैकर में आपका स्वागत है';

  @override
  String get welcomeSubtitle => 'आपका व्यक्तिगत वित्त साथी';

  @override
  String get welcomeDesc =>
      'अपनी आय, खर्चों पर नज़र रखें और आसानी से अपने पैसे का प्रबंधन करें। अपने वित्तीय लक्ष्यों के शीर्ष पर रहें.';

  @override
  String get smartTrackingTitle => 'स्मार्ट लेनदेन ट्रैकिंग';

  @override
  String get smartTrackingSubtitle => 'अपने वित्त को व्यवस्थित करें';

  @override
  String get smartTrackingDesc =>
      'लेन-देन को वर्गीकृत करें, नोट्स जोड़ें और अपने खर्च पैटर्न के बारे में विस्तृत जानकारी प्राप्त करें।';

  @override
  String get peopleTrackingTitle => 'व्यक्ति-से-व्यक्ति ट्रैकिंग';

  @override
  String get peopleTrackingSubtitle => 'साझा खर्चों का प्रबंधन करें';

  @override
  String get peopleTrackingDesc =>
      'उन पैसों का पता लगाएं जो आप पर बकाया हैं या दूसरों पर बकाया हैं। रूममेट्स, दोस्तों और परिवार के लिए बिल्कुल सही।';

  @override
  String get analyticsTitle => 'सुंदर विश्लेषण';

  @override
  String get analyticsSubtitle => 'अपना डेटा विज़ुअलाइज़ करें';

  @override
  String get analyticsDesc =>
      'चार्ट और ग्राफ़ आपकी खर्च करने की आदतों और वित्तीय रुझानों को समझने में आपकी मदद करते हैं।';

  @override
  String get offlineTitle => 'पूर्णतः ऑफ़लाइन';

  @override
  String get offlineSubtitle => 'आपका डेटा निजी रहता है';

  @override
  String get offlineDesc =>
      'आपका सारा वित्तीय डेटा आपके डिवाइस पर स्थानीय रूप से संग्रहीत है। इंटरनेट की आवश्यकता नहीं, पूर्ण गोपनीयता।';

  @override
  String get autoDetectTitle => 'ऑटो लेनदेन का पता लगाना';

  @override
  String get autoDetectSubtitle => 'स्मार्ट एवं स्वचालित';

  @override
  String get autoDetectDesc =>
      'बैंकिंग सूचनाओं से स्वचालित रूप से लेनदेन का पता लगाएं। कोई और मैन्युअल प्रविष्टि नहीं - आपके लेनदेन तुरंत कैप्चर किए जाते हैं!';

  @override
  String get readyTitle => 'शुरू करने के लिए तैयार हैं?';

  @override
  String get readySubtitle => 'आइए अपनी यात्रा शुरू करें';

  @override
  String get readyDesc =>
      'तुम सब सेट हो! अपने वित्त पर नज़र रखना शुरू करें और आज ही अपने पैसे पर नियंत्रण रखें।';

  @override
  String get settingUpApp => 'आपका ऐप सेट किया जा रहा है...';

  @override
  String get skip => 'छोडना';

  @override
  String get next => 'अगला';

  @override
  String get getStarted => 'शुरू हो जाओ';

  @override
  String get requestMoney => 'पैसे का अनुरोध';

  @override
  String get requestMoneyTooltip => 'UPI के ज़रिए पैसे मांगें';

  @override
  String get generateQr => 'भुगतान क्यूआर उत्पन्न करें';

  @override
  String get sortByNameAZ => 'नाम (ए-जेड)';

  @override
  String get sortByNameZA => 'नाम (जेड-ए)';

  @override
  String get sortByBalanceHighest => 'शेष (उच्चतम)';

  @override
  String get sortByBalanceLowest => 'शेष (न्यूनतम)';

  @override
  String get upiIdNotSet =>
      'इस व्यक्ति के लिए UPI आईडी सेट नहीं है. कृपया इसे संपादन से जोड़ें.';

  @override
  String get couldNotFindUpiApp => 'UPI भुगतान ऐप नहीं मिल सका';

  @override
  String get noTransactionsYet => 'अभी तक कोई लेन-देन नहीं';

  @override
  String get addFirstTransaction =>
      'उस व्यक्ति के साथ अपना पहला लेन-देन जोड़ें';

  @override
  String get settleBalance => 'संतुलन व्यवस्थित करें';

  @override
  String settleBalanceDesc(String amount) {
    return 'इससे शेष राशि को शून्य पर लाने के लिए $amount का लेनदेन जोड़ा जाएगा। जारी रखना?';
  }

  @override
  String get settle => 'निपटारा करना';

  @override
  String get deletePerson => 'व्यक्ति हटाएं';

  @override
  String deletePersonDesc(String name) {
    return 'क्या आप वाकई $name को हटाना चाहते हैं? इस एक्शन को वापस नहीं किया जा सकता।';
  }

  @override
  String get deleteTransactionDesc =>
      'क्या आप वाकई इस लेन-देन को हटाना चाहते हैं?';

  @override
  String get update => 'अद्यतन';

  @override
  String get sortTransactionsBy => 'लेनदेन को इसके अनुसार क्रमबद्ध करें';

  @override
  String get sortByDateRecent => 'दिनांक (हाल का)';

  @override
  String get sortByDateOldest => 'दिनांक (सबसे पुराना)';

  @override
  String get sortByAmountHighest => 'राशि (उच्चतम)';

  @override
  String get sortByAmountLowest => 'राशि (न्यूनतम)';

  @override
  String get rangeAll => 'सभी';

  @override
  String get rangeDay => 'दिन';

  @override
  String get rangeWeek => 'सप्ताह';

  @override
  String get rangeMonth => 'महीना';

  @override
  String get rangeYear => 'वर्ष';

  @override
  String get topCategory => 'शीर्ष श्रेणी';

  @override
  String get noSpending => 'कोई खर्च नहीं';

  @override
  String get avgDailySpend => 'औसत दैनिक खर्च';

  @override
  String get perDay => 'प्रति दिन';

  @override
  String get monitoredApps => 'मॉनिटर किए गए ऐप्स';

  @override
  String get searchAppsHint => 'भुगतान या बैंकिंग ऐप्स खोजें...';

  @override
  String get noEligibleApps => 'कोई योग्य ऐप्स नहीं मिला';

  @override
  String get noAppsMatchSearch => 'कोई भी ऐप्स आपकी खोज से मेल नहीं खाता';

  @override
  String get unknownApp => 'अज्ञात ऐप';

  @override
  String errorLoadingApps(String error) {
    return 'ऐप्स लोड करने में त्रुटि: $error';
  }

  @override
  String selectedCount(int count) {
    return '$count चयनित';
  }

  @override
  String get ignorePatternsTooltip => 'पैटर्न पर ध्यान न दें';

  @override
  String get deleteSelectedTooltip => 'चयनित को हटाओ';

  @override
  String get clearHistoryTitle => 'इतिहास मिटा दें?';

  @override
  String get clearHistoryDesc =>
      'इससे सभी सहेजे गए डिटेक्शन लॉग हटा दिए जाएंगे.';

  @override
  String get clear => 'स्पष्ट';

  @override
  String get transactionDetected => 'लेन-देन का पता चला';

  @override
  String get notificationLogged => 'अधिसूचना लॉग की गई';

  @override
  String get patternNotMatched => 'पैटर्न मेल नहीं खाता';

  @override
  String get notificationDataTitle => 'अधिसूचना डेटा';

  @override
  String get copiedToClipboard => 'संदेश क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get copy => 'कॉपी';

  @override
  String get smsMessage => 'एसएमएस संदेश';

  @override
  String get received => 'प्राप्त';

  @override
  String get paid => 'चुकाया गया';

  @override
  String get listeningHint => 'सुनना...';

  @override
  String get keepSpeaking => 'बोलते रहो...';

  @override
  String get done => 'हो गया';

  @override
  String get fullBackupTitle => 'पूर्ण बैकअप (JSON)';

  @override
  String get fullBackupDesc => 'सभी डेटा का JSON पर बैकअप लें';

  @override
  String get restoreBackupTitle => 'बैकअप पुनर्स्थापित करें (JSON)';

  @override
  String get restoreBackupDesc => 'JSON बैकअप से सभी डेटा पुनर्स्थापित करें';

  @override
  String get backupCompleted => 'बैकअप पूरा हुआ!';

  @override
  String backupFailed(String error) {
    return 'बैकअप विफल: $error';
  }

  @override
  String get restoreCompleted => 'डेटा सफलतापूर्वक बहाल हो गया!';

  @override
  String get restoreFailedCancelled => 'पुनर्स्थापना विफल या रद्द कर दी गई';

  @override
  String restoreFailed(String error) {
    return 'पुनर्स्थापना विफल: $error';
  }

  @override
  String get pdfExported => 'पीडीएफ सफलतापूर्वक निर्यात किया गया!';

  @override
  String pdfExportFailed(String error) {
    return 'पीडीएफ निर्यात विफल: $error';
  }

  @override
  String get peopleExported => 'लोगों का डेटा निर्यात किया गया!';

  @override
  String peopleExportFailed(String error) {
    return 'लोगों का डेटा निर्यात विफल: $error';
  }

  @override
  String get allDataDeleted => 'सारा डेटा सफलतापूर्वक हटा दिया गया!';

  @override
  String get introReset => 'परिचय रीसेट सफलतापूर्वक!';

  @override
  String get selectRestoreMode => 'पुनर्स्थापना मोड का चयन करें';

  @override
  String get restoreModeDesc =>
      'डेटा पुनर्स्थापना के दौरान मौजूदा लेनदेन रिकॉर्ड को संभालने का तरीका चुनें।';

  @override
  String get mergeSkipDuplicates => 'डुप्लिकेट को मर्ज करें और छोड़ें';

  @override
  String get mergeSkipDesc =>
      'सभी अद्वितीय नई वस्तुओं को रखते हुए डुप्लिकेट प्रविष्टियों से बचें।';

  @override
  String get overwriteConflicts => 'विरोधों को अधिलेखित एवं अद्यतन करें';

  @override
  String get overwriteConflictsDesc =>
      'टकराव की स्थिति में मौजूदा लेनदेन रिकॉर्ड को बैकअप संस्करणों से बदलें।';

  @override
  String get exportCsvTitle => 'निर्यात लेनदेन (सीएसवी)';

  @override
  String get exportCsvDesc => 'अपने लेनदेन को सीएसवी में निर्यात करें';

  @override
  String get exportCsvSuccess => 'निर्यात सफलतापूर्वक पूरा हुआ!';

  @override
  String exportCsvFailed(String error) {
    return 'निर्यात विफल: $error';
  }

  @override
  String get exportPeopleTitle => 'लोगों का डेटा निर्यात करें';

  @override
  String get exportPeopleDesc => 'बैकअप लोगों के लेनदेन';

  @override
  String get exportPdfTitle => 'पीडीएफ के रूप में निर्यात करें';

  @override
  String get exportPdfDesc => 'पीडीएफ रिपोर्ट तैयार करें';

  @override
  String get biometricNotSupported =>
      'इस डिवाइस पर बायोमेट्रिक प्रमाणीकरण समर्थित नहीं है';

  @override
  String get noBiometricMethods =>
      'कोई बायोमेट्रिक प्रमाणीकरण विधि उपलब्ध नहीं है';

  @override
  String get authenticateReason => 'ऐप लॉक सक्षम करने के लिए प्रमाणित करें';

  @override
  String get authFailedAppLockNotEnabled =>
      'प्रमाणीकरण विफल रहा। ऐप लॉक सक्षम नहीं हुआ।';

  @override
  String get appLockEnabledSuccess => 'ऐप लॉक सफलतापूर्वक सक्षम किया गया';

  @override
  String get appLockDisabledSuccess => 'ऐप लॉक सफलतापूर्वक अक्षम किया गया';

  @override
  String get failedToEnableAppLock => 'ऐप लॉक सक्षम करने में विफल';

  @override
  String get failedToDisableAppLock => 'ऐप लॉक अक्षम करने में विफल';

  @override
  String get pickAppColor => 'ऐप का रंग चुनें';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get selectAction => 'चुनें';

  @override
  String get appColorResetDefault => 'ऐप का रंग डिफ़ॉल्ट पर रीसेट कर दिया गया!';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'डिवाइस बायोमेट्रिक्स या डिवाइस प्रमाणीकरण का समर्थन नहीं करता।';

  @override
  String get appLockEnabledDot => 'ऐप लॉक सक्षम किया गया।';

  @override
  String get appLockDisabledDot => 'ऐप लॉक अक्षम किया गया।';

  @override
  String get cautionToUse => 'उपयोग में सावधानी बरतें';

  @override
  String get autoDetectCautionDesc =>
      'यह सुविधा 100% सटीक नहीं है लेकिन काम कर सकती है। पूर्ण गोपनीयता के लिए सभी SMS और नोटिफिकेशन डेटा पूरी तरह से आपके डिवाइस पर स्थानीय रूप से प्रोसेस किया जाता है।';

  @override
  String get autoDetectSettingSubtitle =>
      'नोटिफिकेशन से लेन-देन स्वचालित रूप से पहचानें';

  @override
  String get permissionsRequiredNoAccess =>
      'अनुमतियाँ आवश्यक हैं: कोई नोटिफिकेशन या SMS एक्सेस नहीं दी गई। ऑटो-डिटेक्शन सक्षम नहीं किया जा सकता।';

  @override
  String get noteNotificationAccessMissing =>
      'नोट: नोटिफिकेशन एक्सेस गायब है। केवल SMS डिटेक्शन काम करेगा।';

  @override
  String get noteSmsPermissionMissing =>
      'नोट: SMS अनुमति गायब है। केवल नोटिफिकेशन डिटेक्शन काम करेगा।';

  @override
  String get autoDetectionEnabledExclaim => 'ऑटो-डिटेक्शन सक्षम किया गया!';

  @override
  String get autoDetectionDisabledExclaim => 'ऑटो-डिटेक्शन अक्षम किया गया!';

  @override
  String get processRecentDataTitle => 'हाल का डेटा प्रोसेस करें';

  @override
  String get processRecentDataSubtitle =>
      'लेन-देन के लिए हाल की नोटिफिकेशन स्कैन करें';

  @override
  String get recentDataProcessed => 'हाल का डेटा सफलतापूर्वक प्रोसेस किया गया!';

  @override
  String get errorProcessingData => 'डेटा प्रोसेस करने में त्रुटि';

  @override
  String get testDetectionLogicTitle => 'डिटेक्शन लॉजिक परखें';

  @override
  String get testDetectionLogicSubtitle =>
      'पार्सिंग जांचने के लिए एक नोटिफिकेशन सिम्युलेट करें';

  @override
  String get showDetectionHistoryTitle => 'डिटेक्शन इतिहास दिखाएं';

  @override
  String get showDetectionHistorySubtitle =>
      'पहचानी गई लेन-देन के विस्तृत लॉग देखें';

  @override
  String get autoDeleteUndetectedTitle => 'अनडिटेक्टेड इतिहास स्वतः हटाएं';

  @override
  String get autoDeleteUndetectedSubtitle =>
      '12 घंटे बाद अनडिटेक्टेड आइटम हटाएं';

  @override
  String get testParserDiagnosticTitle => 'पार्सर डायग्नोस्टिक टेस्ट';

  @override
  String get testParserDiagnosticDesc =>
      'यह देखने के लिए एक नमूना नोटिफिकेशन संदेश दर्ज करें कि हमारा पार्सर इसे कैसे संभालता है।';

  @override
  String get pasteNotificationHint => 'यहां नोटिफिकेशन टेक्स्ट पेस्ट करें...';

  @override
  String get statusBalanceSync => 'बैलेंस सिंक';

  @override
  String get statusNoActionDetected => 'कोई कार्रवाई नहीं पाई गई';

  @override
  String get transactionType => 'प्रकार';

  @override
  String get resultLabelMerchant => 'व्यापारी';

  @override
  String get resultLabelBank => 'बैंक';

  @override
  String get balanceLabel => 'बैलेंस';

  @override
  String get resultLabelConfidence => 'विश्वसनीयता';

  @override
  String get unknown => 'अज्ञात';

  @override
  String get general => 'सामान्य';

  @override
  String get notAvailable => 'उपलब्ध नहीं';

  @override
  String get close => 'बंद करें';

  @override
  String get parseText => 'टेक्स्ट पार्स करें';

  @override
  String get deleteAllDataTitle => 'सभी डेटा हटाएं';

  @override
  String get deleteAllDataWarningSubtitle =>
      '⚠️ इस कार्रवाई को पूर्ववत नहीं किया जा सकता';

  @override
  String get resetIntroTitle => 'इंट्रो रीसेट करें';

  @override
  String get resetIntroSubtitle => 'इंट्रो स्क्रीन फिर से दिखाएं';

  @override
  String get incomeCategories => 'आय श्रेणियाँ';

  @override
  String get incomeCategoriesDesc => 'आय के लिए श्रेणियाँ प्रबंधित करें';

  @override
  String get expenseCategories => 'व्यय श्रेणियाँ';

  @override
  String get expenseCategoriesDesc => 'व्यय के लिए श्रेणियाँ प्रबंधित करें';

  @override
  String get accountsTitle => 'खाते';

  @override
  String get accountsDesc => 'अपने खातों को प्रबंधित करें';

  @override
  String get enterNamePlaceholder => 'नाम दर्ज करें...';

  @override
  String get aboutAppSubtitle => 'डेवलपर, गोपनीयता, सहायता और अधिक';

  @override
  String get setMonthlySpendingLimit => 'मासिक खर्च की सीमा निर्धारित करें';

  @override
  String get joinPreviousMonthBalanceTitle => 'पिछले महीने का बैलेंस जोड़ें';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'वर्तमान कुल में पिछले महीने का बैलेंस शामिल करें';

  @override
  String get setMonthlyBudgetTitle => 'मासिक बजट निर्धारित करें';

  @override
  String get budgetAmountLabel => 'बजट राशि';

  @override
  String get budgetUpdated => 'बजट अपडेट किया गया!';

  @override
  String get confirmDeleteTitle => 'हटाने की पुष्टि करें';

  @override
  String get confirmDeleteAllDesc =>
      'क्या आप वाकई सभी लेन-देन हटाना और अपना बैलेंस रीसेट करना चाहते हैं? इस कार्रवाई को पूर्ववत नहीं किया जा सकता।';

  @override
  String get deleteAllButton => 'सभी हटाएं';

  @override
  String get failedDeleteAllData =>
      'सभी डेटा हटाने में विफल। कृपया पुनः प्रयास करें।';

  @override
  String get resetIntroConfirmDesc =>
      'इससे अगली बार ऐप खोलने पर इंट्रो स्क्रीन फिर से दिखेंगी। आपका डेटा अपरिवर्तित रहेगा।';

  @override
  String editFieldTitle(String field) {
    return '$field संपादित करें';
  }

  @override
  String enterFieldHint(String field) {
    return '$field दर्ज करें';
  }

  @override
  String statusLabel(String status) {
    return 'स्थिति: $status';
  }

  @override
  String manageItemsTitle(String type) {
    return '$type प्रबंधित करें';
  }

  @override
  String noItemsFound(String type) {
    return 'कोई $type नहीं मिला।';
  }

  @override
  String addItemButton(String type) {
    return '$type जोड़ें';
  }

  @override
  String editItemTitle(String type) {
    return '$type संपादित करें';
  }

  @override
  String itemNameLabel(String type) {
    return '$type नाम';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'मासिक सीमा: $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'इंट्रो रीसेट करने में विफल। कृपया पुनः प्रयास करें।\\n$error';
  }

  @override
  String get failedUpdateAutoDetection => 'ऑटो-डिटेक्शन अपडेट करने में विफल';

  @override
  String get actionCannotBeUndone =>
      'इस कार्रवाई को पूर्ववत नहीं किया जा सकता।';

  @override
  String deleteTransactionsCountTitle(int count) {
    return '$count लेन-देन हटाएं?';
  }

  @override
  String deletedTransactionsCount(int count) {
    return '$count लेन-देन हटाए गए';
  }

  @override
  String get transactionHistoryTitle => 'लेन-देन इतिहास';

  @override
  String get upiIdMissingTitle => 'UPI ID गायब है';

  @override
  String get upiIdMissingDesc =>
      'QR कोड के ज़रिए पैसे मांगने के लिए कृपया सेटिंग्स में अपनी UPI ID सेट करें।';

  @override
  String get openSettings => 'सेटिंग्स खोलें';

  @override
  String get recipientFallback => 'प्राप्तकर्ता';

  @override
  String get paymentLinkCopied => 'भुगतान लिंक कॉपी हो गया!';

  @override
  String get linkButton => 'लिंक';

  @override
  String get shareQr => 'QR शेयर करें';

  @override
  String get upiPaymentLinkSubject => 'UPI भुगतान लिंक';

  @override
  String requestingFrom(String name) {
    return '$name से अनुरोध किया जा रहा है';
  }

  @override
  String upiIdColonValue(String id) {
    return 'यूपीआई आईडी: $id';
  }

  @override
  String failedShareQr(String error) {
    return 'QR छवि साझा करने में विफल: $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return '$name के लिए UPI QR से भुगतान करें';
  }

  @override
  String get pleaseSelectPerson => 'कृपया एक व्यक्ति चुनें';

  @override
  String get amountInInr => 'राशि (INR में)';

  @override
  String get currency => 'मुद्रा';

  @override
  String get selectCurrency => 'मुद्रा चुनें';

  @override
  String get searchCurrency => 'मुद्रा खोजें';

  @override
  String get autoDetectCurrency => 'मुद्रा स्वतः पहचानें';

  @override
  String get autoDetectCurrencyDesc =>
      'आपके डिवाइस के क्षेत्र के अनुसार स्वतः सेट करें';

  @override
  String get popularCurrencies => 'लोकप्रिय';

  @override
  String get allCurrencies => 'सभी मुद्राएं';

  @override
  String get noCurrencyFound => 'कोई मुद्रा नहीं मिली';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get quickCategories => 'त्वरित श्रेणियाँ';

  @override
  String get saveToPerson => 'व्यक्ति में सहेजें';

  @override
  String get noPeopleCreateHint =>
      'अभी तक कोई व्यक्ति नहीं जोड़ा गया। लोग अनुभाग में व्यक्ति बनाएं।';

  @override
  String get selectPersonLabel => 'व्यक्ति चुनें';

  @override
  String get selectCategoryTitle => 'श्रेणी चुनें';

  @override
  String get updateTransactionButton => 'लेन-देन अपडेट करें';

  @override
  String get saveTransactionButton => 'लेन-देन सहेजें';

  @override
  String linkedToRecord(String name) {
    return '$name के रिकॉर्ड से जोड़ा गया';
  }

  @override
  String selectItemTitle(String type) {
    return '$type चुनें';
  }

  @override
  String get personSingular => 'व्यक्ति';

  @override
  String get error => 'त्रुटि';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get setupFailedRetry =>
      'सेटअप पूरा करने में विफल। कृपया पुनः प्रयास करें।';

  @override
  String get backButton => 'वापस';

  @override
  String get voiceInputExampleHint =>
      'कुछ ऐसा कहें जैसे \'डिनर पर 500 खर्च किए\'';

  @override
  String get autoDetectionEnabledSuccess =>
      'ऑटो-डिटेक्शन सफलतापूर्वक सक्षम किया गया!';

  @override
  String openingRequestQrFor(String name) {
    return '$name के लिए अनुरोध QR खोला जा रहा है';
  }

  @override
  String get add => 'जोड़ें';

  @override
  String get uncategorized => 'अवर्गीकृत';

  @override
  String get timeLabel => 'समय';

  @override
  String get statusColumnLabel => 'स्थिति';

  @override
  String get completedLabel => 'पूर्ण';

  @override
  String get notes => 'टिप्पणियाँ';

  @override
  String get serviceLabel => 'सेवा';

  @override
  String get refIdLabel => 'संदर्भ आईडी';

  @override
  String get detectedViaLabel => 'इसके ज़रिए पहचाना गया';

  @override
  String get attachmentsLabel => 'अनुलग्नक';

  @override
  String get originalLogLabel => 'मूल लॉग';

  @override
  String get noNoteProvided => 'कोई टिप्पणी नहीं दी गई';

  @override
  String get tapToUnlock => 'अनलॉक करने के लिए टैप करें';

  @override
  String get addPeopleEmptyDesc =>
      'उनके साथ लेन-देन ट्रैक करने के लिए लोगों को जोड़ें';

  @override
  String get noPeopleMatchSearch => 'कोई भी व्यक्ति आपकी खोज से मेल नहीं खाता';

  @override
  String get okay => 'ठीक है';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get ok => 'ठीक है';

  @override
  String get unexpectedErrorOccurred => 'एक अप्रत्याशित त्रुटि हुई';

  @override
  String get autoDetectionActive => 'ऑटो-डिटेक्शन सक्रिय है';

  @override
  String get unknownSource => 'अज्ञात स्रोत';

  @override
  String get noMessageContentAvailable => 'कोई संदेश सामग्री उपलब्ध नहीं है';

  @override
  String get addManually => 'मैन्युअल रूप से जोड़ें';

  @override
  String get detectedAsIncome => 'आय के रूप में पहचाना गया';

  @override
  String get detectedAsExpense => 'व्यय के रूप में पहचाना गया';

  @override
  String sourceColonValue(String source) {
    return 'स्रोत: $source';
  }

  @override
  String get sourceNotification => 'सूचना';

  @override
  String get sourceSms => 'एसएमएस';

  @override
  String get sourceRecheckHistory => 'पुनः जांचा गया इतिहास';

  @override
  String get sourceManualAddHistory => 'मैन्युअल जोड़ (इतिहास से)';

  @override
  String get recentLabel => 'हाल का';

  @override
  String get oldestLabel => 'सबसे पुराना';

  @override
  String get highestLabel => 'सबसे अधिक';

  @override
  String get lowestLabel => 'सबसे कम';

  @override
  String get glassBlurEffectsTitle => 'ग्लास ब्लर इफ़ेक्ट';

  @override
  String get glassBlurEffectsSubtitle =>
      'ग्लास पैनल और डायलॉग पर हल्का ब्लर प्रभाव — इसमें अधिक प्रोसेसिंग पावर लगती है, पुराने डिवाइस पर बेहतर प्रदर्शन के लिए इसे बंद करें।';

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
