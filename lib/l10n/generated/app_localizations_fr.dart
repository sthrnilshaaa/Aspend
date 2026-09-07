// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Aspends';

  @override
  String get appTagline => 'Dépenses intelligentes, simplifiées.';

  @override
  String get totalBalance => 'Solde total';

  @override
  String get income => 'Revenu';

  @override
  String get expense => 'Frais';

  @override
  String get monthlyBudget => 'Budget mensuel';

  @override
  String get transactions => 'Transactions';

  @override
  String get recentTransactions => 'Transactions récentes';

  @override
  String get seeAll => 'Tout voir';

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get theme => 'Thème';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get lightMode => 'Mode lumière';

  @override
  String get systemDefault => 'Système par défaut';

  @override
  String get adaptiveColor => 'Couleur adaptative';

  @override
  String get customColor => 'Couleur personnalisée';

  @override
  String get backup => 'Sauvegarde et restauration';

  @override
  String get export => 'Exporter des données';

  @override
  String get import => 'Importer des données';

  @override
  String get privacyPolicy => 'politique de confidentialité';

  @override
  String get telegramSupport => 'Prise en charge des télégrammes';

  @override
  String get addTransaction => 'Ajouter une transaction';

  @override
  String get editTransaction => 'Modifier la transaction';

  @override
  String get deleteTransaction => 'Supprimer la transaction';

  @override
  String get amount => 'Montant';

  @override
  String get category => 'Catégorie';

  @override
  String get account => 'Compte';

  @override
  String get date => 'Date';

  @override
  String get note => 'Remarque (facultatif)';

  @override
  String get save => 'Sauvegarder';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get search => 'Rechercher des opérations...';

  @override
  String get noTransactions => 'Aucune transaction trouvée';

  @override
  String get voiceInput => 'Entrée vocale';

  @override
  String get speechUnavailable => 'Reconnaissance vocale indisponible';

  @override
  String get microPermissionDenied => 'Autorisation du microphone refusée';

  @override
  String get microPermissionTitle => 'Accès au microphone requis';

  @override
  String get microPermissionDesc =>
      'Aspends a besoin d\'accéder au microphone pour vous permettre de saisir les détails des transactions par commandes vocales. Vos entrées vocales sont traitées entièrement hors ligne sur votre appareil et ne sont jamais téléchargées ni partagées.';

  @override
  String get microPermissionGrant => 'Activer la voix';

  @override
  String get appearance => 'Apparence';

  @override
  String get security => 'Sécurité';

  @override
  String get autoDetection => 'Détection automatique des transactions';

  @override
  String get backupExport => 'Sauvegarde et exportation';

  @override
  String get dataManagement => 'Gestion des données';

  @override
  String get budgetingBalance => 'Budgétisation et équilibre';

  @override
  String get customDropdowns => 'Éléments déroulants personnalisés';

  @override
  String get appInformation => 'Informations sur l\'application';

  @override
  String get developedBy => 'Développé avec ❤️ par Sthrnilshaa';

  @override
  String get chooseTheme => 'Choisissez votre thème préféré';

  @override
  String get appLock => 'Verrouillage d\'application';

  @override
  String get appLockDesc =>
      'Exiger l\'authentification de l\'appareil pour ouvrir l\'application';

  @override
  String get upiId => 'Identifiant UPI';

  @override
  String get upiIdDesc =>
      'Définissez votre identifiant UPI pour les demandes d\'argent';

  @override
  String get upiName => 'Nom d\'affichage';

  @override
  String get upiNameDesc => 'Facultatif : Nom affiché dans la demande UPI';

  @override
  String get analytics => 'Analytique';

  @override
  String get people => 'Personnes';

  @override
  String get charts => 'Graphiques';

  @override
  String get sortBy => 'Trier par';

  @override
  String get holdToRecord => 'Conserver pour enregistrer la transaction';

  @override
  String get couldNotFindAmount =>
      'Impossible de trouver le montant. Essayez : « J’ai dépensé 500 en nourriture »';

  @override
  String savedAmount(String amount, String category) {
    return '$amount enregistré pour $category';
  }

  @override
  String logsDeleted(int count) {
    return '$count journaux supprimés';
  }

  @override
  String patternsIgnored(int count) {
    return 'Modèles $count ignorés de manière permanente';
  }

  @override
  String get recheckComplete => 'Revérification terminée';

  @override
  String get aboutApp => 'À propos d\'Aspends';

  @override
  String get developerDesigner => 'Développeur et concepteur';

  @override
  String get leadDesigner => 'Concepteur principal';

  @override
  String get developer => 'Promoteur';

  @override
  String get supportLegal => 'Assistance et informations juridiques';

  @override
  String get privacyPolicyDesc =>
      'Lire notre document de politique de confidentialité';

  @override
  String get helpSupport => 'Aide et assistance';

  @override
  String get telegramSupportDesc =>
      'Rejoignez notre télégramme pour obtenir de l\'aide';

  @override
  String get projectInfo => 'Informations sur le projet';

  @override
  String get openSource => 'Source ouverte';

  @override
  String get openSourceDesc => 'Fièrement open source sur GitHub';

  @override
  String get licenses => 'Licences open source';

  @override
  String get licensesDesc =>
      'Afficher les licences tierces utilisées dans cette application';

  @override
  String get rateApp => 'Taux Aspend';

  @override
  String get rateAppDesc => 'Soutenez-nous avec une note de 5 étoiles';

  @override
  String get couldNotLaunchUrl => 'Impossible d\'ouvrir le lien';

  @override
  String errorWithDetails(String error) {
    return 'Erreur : $error';
  }

  @override
  String get madeWithLove => 'Fait avec ❤️ pour de meilleures finances';

  @override
  String get howAspendWorks => 'COMMENT FONCTIONNE ASPEND';

  @override
  String get howItWorksTitle1 => '1. Interception intelligente';

  @override
  String get howItWorksDesc1 =>
      'Un service d\'arrière-plan sécurisé et optimisé pour la batterie écoute les SMS entrants et les notifications bancaires.';

  @override
  String get howItWorksTitle2 => '2. Analyse locale sans cloud';

  @override
  String get howItWorksDesc2 =>
      'Des algorithmes intelligents hors ligne extraient instantanément les montants, les catégories et les commerçants, à 100 % sur votre appareil.';

  @override
  String get howItWorksTitle3 => '3. Récupération automatique hors ligne';

  @override
  String get howItWorksDesc3 =>
      'Chaque fois que vous ouvrez ou reprenez Aspend, il analyse automatiquement l\'historique des transactions manquées pendant votre absence.';

  @override
  String get howItWorksTitle4 => '4. Verrouillage de confidentialité ultime';

  @override
  String get howItWorksDesc4 =>
      'Pas de serveurs, pas de requêtes Web. Vos données financières sont protégées localement dans le stockage Hive crypté.';

  @override
  String get autoDetectionSetup => 'Configuration de la détection automatique';

  @override
  String get autoDetectionSetupDesc =>
      'Pour détecter automatiquement les transactions, nous avons besoin d\'autorisations spécifiques. Toutes les applications bancaires et de transactions seront surveillées en toute sécurité.';

  @override
  String get notificationAccess => '1. Accès aux notifications';

  @override
  String get notificationAccessDesc =>
      'Nous permet de lire les alertes de transaction des applications bancaires et de paiement.';

  @override
  String get smsPermission => '2. Autorisation SMS';

  @override
  String get smsPermissionDesc =>
      'Permet de lire les SMS de transaction de votre banque.';

  @override
  String get finishSetup => 'Terminer la configuration';

  @override
  String get grant => 'Accorder';

  @override
  String get appNameShort => 'Aspends';

  @override
  String get splashTagline => 'Gestion intelligente de l\'argent';

  @override
  String get budget => 'Budget';

  @override
  String overBudgetBy(String amount) {
    return '⚠️ Dépassé de $amount';
  }

  @override
  String get balanceDetailsTitle => 'Détails du solde';

  @override
  String get editBalanceTitle => 'Modifier le solde';

  @override
  String get tapHoldToEditBalance =>
      'Appuyez de manière prolongée pour modifier le solde';

  @override
  String get longPressBalanceCardHint =>
      'Appuyez longuement sur la carte de solde sur l\'écran d\'accueil';

  @override
  String get newBalanceLabel => 'Nouvel équilibre';

  @override
  String get viewAll => 'Voir tout';

  @override
  String get searchHint => 'Rechercher des catégories ou des notes...';

  @override
  String get emptyWalletTitle => 'Votre portefeuille est silencieux';

  @override
  String get emptyWalletDesc =>
      'Commencez par ajouter une transaction manuellement ou activez la détection automatique pour suivre vos dépenses sans effort.';

  @override
  String get addPerson => 'Ajouter une personne';

  @override
  String get addNewPerson => 'Ajouter une nouvelle personne';

  @override
  String get editPerson => 'Modifier une personne';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get personName => 'Nom de la personne';

  @override
  String get youGet => 'Vous possédez';

  @override
  String get youGive => 'Vous empruntez';

  @override
  String get youWillGet => 'Vous deviendrez propriétaire';

  @override
  String get youWillGive => 'Vous emprunterez';

  @override
  String get noPeopleYet => 'Aucune personne ajoutée pour l\'instant';

  @override
  String get searchPeople => 'Rechercher des personnes...';

  @override
  String get enterNameHint =>
      'Entrez le nom de la personne avec laquelle vous souhaitez suivre les transactions';

  @override
  String get updateDetailsHint => 'Mettre à jour les détails de cette personne';

  @override
  String get expenses => 'Dépenses';

  @override
  String get history => 'Histoire';

  @override
  String get overview => 'Aperçu';

  @override
  String get trends => 'Tendances';

  @override
  String get categories => 'Catégories';

  @override
  String get noDataFound => 'Aucun enregistrement de données trouvé';

  @override
  String get appColor => 'Couleur de l\'application';

  @override
  String get selectColor =>
      'Sélectionnez une couleur d\'application personnalisée';

  @override
  String get welcomeTitle => 'Bienvenue sur Aspends Tracker';

  @override
  String get welcomeSubtitle => 'Votre compagnon de finances personnelles';

  @override
  String get welcomeDesc =>
      'Suivez vos revenus, vos dépenses et gérez votre argent en toute simplicité. Restez au top de vos objectifs financiers.';

  @override
  String get smartTrackingTitle => 'Suivi intelligent des transactions';

  @override
  String get smartTrackingSubtitle => 'Organisez vos finances';

  @override
  String get smartTrackingDesc =>
      'Classez les transactions, ajoutez des notes et obtenez des informations détaillées sur vos habitudes de dépenses.';

  @override
  String get peopleTrackingTitle => 'Suivi de personne à personne';

  @override
  String get peopleTrackingSubtitle => 'Gérer les dépenses partagées';

  @override
  String get peopleTrackingDesc =>
      'Suivez l’argent que vous devez ou que d’autres vous doivent. Parfait pour les colocataires, les amis et la famille.';

  @override
  String get analyticsTitle => 'De belles analyses';

  @override
  String get analyticsSubtitle => 'Visualisez vos données';

  @override
  String get analyticsDesc =>
      'Les tableaux et graphiques vous aident à comprendre vos habitudes de dépenses et vos tendances financières.';

  @override
  String get offlineTitle => 'Entièrement hors ligne';

  @override
  String get offlineSubtitle => 'Vos données restent privées';

  @override
  String get offlineDesc =>
      'Toutes vos données financières sont stockées localement sur votre appareil. Pas d\'Internet requis, confidentialité totale.';

  @override
  String get autoDetectTitle => 'Détection automatique des transactions';

  @override
  String get autoDetectSubtitle => 'Intelligent et automatisé';

  @override
  String get autoDetectDesc =>
      'Détectez automatiquement les transactions à partir des notifications bancaires. Plus de saisie manuelle, vos transactions sont capturées instantanément !';

  @override
  String get readyTitle => 'Prêt à commencer ?';

  @override
  String get readySubtitle => 'Commençons votre voyage';

  @override
  String get readyDesc =>
      'Vous êtes prêt ! Commencez à suivre vos finances et prenez le contrôle de votre argent dès aujourd\'hui.';

  @override
  String get settingUpApp => 'Configuration de votre application...';

  @override
  String get skip => 'Sauter';

  @override
  String get next => 'Suivant';

  @override
  String get getStarted => 'Commencer';

  @override
  String get requestMoney => 'Demander de l\'argent';

  @override
  String get requestMoneyTooltip => 'Demander de l\'argent via UPI';

  @override
  String get generateQr => 'Générer un QR de paiement';

  @override
  String get sortByNameAZ => 'Nom (A-Z)';

  @override
  String get sortByNameZA => 'Nom (Z-A)';

  @override
  String get sortByBalanceHighest => 'Solde (le plus élevé)';

  @override
  String get sortByBalanceLowest => 'Solde (le plus bas)';

  @override
  String get upiIdNotSet =>
      'L\'ID UPI n\'est pas défini pour cette personne. Veuillez l\'ajouter depuis la modification.';

  @override
  String get couldNotFindUpiApp =>
      'Impossible de trouver une application de paiement UPI';

  @override
  String get noTransactionsYet => 'Aucune transaction pour l\'instant';

  @override
  String get addFirstTransaction =>
      'Ajoutez votre première transaction avec la personne';

  @override
  String get settleBalance => 'Régler le solde';

  @override
  String settleBalanceDesc(String amount) {
    return 'Cela ajoutera une transaction de $amount pour ramener le solde à zéro. Continuer?';
  }

  @override
  String get settle => 'Régler';

  @override
  String get deletePerson => 'Supprimer une personne';

  @override
  String deletePersonDesc(String name) {
    return 'Êtes-vous sûr de vouloir supprimer $name ? Cette action ne peut pas être annulée.';
  }

  @override
  String get deleteTransactionDesc =>
      'Êtes-vous sûr de vouloir supprimer cette transaction ?';

  @override
  String get update => 'Mise à jour';

  @override
  String get sortTransactionsBy => 'Trier les transactions par';

  @override
  String get sortByDateRecent => 'Date (récente)';

  @override
  String get sortByDateOldest => 'Date (la plus ancienne)';

  @override
  String get sortByAmountHighest => 'Montant (le plus élevé)';

  @override
  String get sortByAmountLowest => 'Montant (le plus bas)';

  @override
  String get rangeAll => 'Tous';

  @override
  String get rangeDay => 'Jour';

  @override
  String get rangeWeek => 'Semaine';

  @override
  String get rangeMonth => 'Mois';

  @override
  String get rangeYear => 'Année';

  @override
  String get topCategory => 'Catégorie supérieure';

  @override
  String get noSpending => 'Aucune dépense';

  @override
  String get avgDailySpend => 'Moy. Dépense quotidienne';

  @override
  String get perDay => 'Par jour';

  @override
  String get monitoredApps => 'Applications surveillées';

  @override
  String get searchAppsHint =>
      'Rechercher des applications de paiement ou bancaires...';

  @override
  String get noEligibleApps => 'Aucune application éligible trouvée';

  @override
  String get noAppsMatchSearch =>
      'Aucune application ne correspond à votre recherche';

  @override
  String get unknownApp => 'Application inconnue';

  @override
  String errorLoadingApps(String error) {
    return 'Erreur lors du chargement des applications : $error';
  }

  @override
  String selectedCount(int count) {
    return '$count Sélectionné';
  }

  @override
  String get ignorePatternsTooltip => 'Ignorer les modèles';

  @override
  String get deleteSelectedTooltip => 'Supprimer la sélection';

  @override
  String get clearHistoryTitle => 'Effacer l\'historique ?';

  @override
  String get clearHistoryDesc =>
      'Cela supprimera tous les journaux de détection enregistrés.';

  @override
  String get clear => 'Clair';

  @override
  String get transactionDetected => 'Transaction détectée';

  @override
  String get notificationLogged => 'Notification enregistrée';

  @override
  String get patternNotMatched => 'Le motif ne correspond pas';

  @override
  String get notificationDataTitle => 'DONNÉES DE NOTIFICATION';

  @override
  String get copiedToClipboard => 'Message copié dans le presse-papier';

  @override
  String get copy => 'COPIE';

  @override
  String get smsMessage => 'SMS';

  @override
  String get received => 'Reçu';

  @override
  String get paid => 'Payé';

  @override
  String get listeningHint => 'Écoute...';

  @override
  String get keepSpeaking => 'Continuez à parler...';

  @override
  String get done => 'Fait';

  @override
  String get fullBackupTitle => 'Sauvegarde complète (JSON)';

  @override
  String get fullBackupDesc => 'Sauvegarder toutes les données sur JSON';

  @override
  String get restoreBackupTitle => 'Restaurer la sauvegarde (JSON)';

  @override
  String get restoreBackupDesc =>
      'Restaurer toutes les données de la sauvegarde JSON';

  @override
  String get backupCompleted => 'Sauvegarde terminée !';

  @override
  String backupFailed(String error) {
    return 'Échec de la sauvegarde : $error';
  }

  @override
  String get restoreCompleted => 'Données restaurées avec succès !';

  @override
  String get restoreFailedCancelled => 'La restauration a échoué ou annulée';

  @override
  String restoreFailed(String error) {
    return 'Échec de la restauration : $error';
  }

  @override
  String get pdfExported => 'PDF exporté avec succès !';

  @override
  String pdfExportFailed(String error) {
    return 'Échec de l\'exportation PDF : $error';
  }

  @override
  String get peopleExported => 'Données personnelles exportées !';

  @override
  String peopleExportFailed(String error) {
    return 'Échec de l\'exportation des données personnelles : $error';
  }

  @override
  String get allDataDeleted =>
      'Toutes les données ont été supprimées avec succès !';

  @override
  String get introReset => 'Intro réinitialisée avec succès !';

  @override
  String get selectRestoreMode => 'Sélectionnez le mode de restauration';

  @override
  String get restoreModeDesc =>
      'Choisissez comment gérer les enregistrements de transactions existants lors de la restauration des données.';

  @override
  String get mergeSkipDuplicates => 'Fusionner et ignorer les doublons';

  @override
  String get mergeSkipDesc =>
      'Évitez les entrées en double tout en conservant tous les nouveaux éléments uniques.';

  @override
  String get overwriteConflicts => 'Conflits d\'écrasement et de mise à jour';

  @override
  String get overwriteConflictsDesc =>
      'Remplacez les enregistrements de transactions existants par des versions de sauvegarde en cas de conflits.';

  @override
  String get exportCsvTitle => 'Transactions d\'exportation (CSV)';

  @override
  String get exportCsvDesc => 'Exportez vos transactions au format CSV';

  @override
  String get exportCsvSuccess => 'Exportation terminée avec succès !';

  @override
  String exportCsvFailed(String error) {
    return 'Échec de l\'exportation : $error';
  }

  @override
  String get exportPeopleTitle => 'Exporter les données des personnes';

  @override
  String get exportPeopleDesc => 'Sauvegarder les transactions des personnes';

  @override
  String get exportPdfTitle => 'Exporter au format PDF';

  @override
  String get exportPdfDesc => 'Générer des rapports PDF';

  @override
  String get biometricNotSupported =>
      'L\'authentification biométrique n\'est pas prise en charge sur cet appareil';

  @override
  String get noBiometricMethods =>
      'Aucune méthode d\'authentification biométrique disponible';

  @override
  String get authenticateReason =>
      'Authentifiez-vous pour activer le verrouillage de l\'application';

  @override
  String get authFailedAppLockNotEnabled =>
      'Échec de l\'authentification. Verrouillage de l\'application non activé.';

  @override
  String get appLockEnabledSuccess =>
      'Verrouillage de l\'application activé avec succès';

  @override
  String get appLockDisabledSuccess =>
      'Verrouillage de l\'application désactivé avec succès';

  @override
  String get failedToEnableAppLock =>
      'Échec de l\'activation du verrouillage de l\'application';

  @override
  String get failedToDisableAppLock =>
      'Échec de la désactivation du verrouillage de l\'application';

  @override
  String get pickAppColor => 'Choisir la couleur de l\'application';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get selectAction => 'Sélectionner';

  @override
  String get appColorResetDefault =>
      'Couleur de l\'application réinitialisée par défaut !';

  @override
  String get deviceNotSupportBiometricsOrAuth =>
      'L\'appareil ne prend pas en charge la biométrie ou l\'authentification de l\'appareil.';

  @override
  String get appLockEnabledDot => 'Verrouillage de l\'application activé.';

  @override
  String get appLockDisabledDot => 'Verrouillage de l\'application désactivé.';

  @override
  String get cautionToUse => 'Utiliser avec précaution';

  @override
  String get autoDetectCautionDesc =>
      'Cette fonctionnalité n\'est pas parfaite à 100 %, mais elle peut fonctionner. Toutes les données de SMS et de notifications sont traitées à 100 % localement sur votre appareil pour une confidentialité absolue.';

  @override
  String get autoDetectSettingSubtitle =>
      'Détecter automatiquement les transactions à partir des notifications';

  @override
  String get permissionsRequiredNoAccess =>
      'Autorisations requises : aucun accès aux notifications ou aux SMS accordé. La détection automatique ne peut pas être activée.';

  @override
  String get noteNotificationAccessMissing =>
      'Remarque : l\'accès aux notifications est manquant. Seule la détection par SMS fonctionnera.';

  @override
  String get noteSmsPermissionMissing =>
      'Remarque : l\'autorisation SMS est manquante. Seule la détection par notification fonctionnera.';

  @override
  String get autoDetectionEnabledExclaim => 'Détection automatique activée !';

  @override
  String get autoDetectionDisabledExclaim =>
      'Détection automatique désactivée !';

  @override
  String get processRecentDataTitle => 'Traiter les données récentes';

  @override
  String get processRecentDataSubtitle =>
      'Analyser les notifications récentes à la recherche de transactions';

  @override
  String get recentDataProcessed => 'Données récentes traitées avec succès !';

  @override
  String get errorProcessingData => 'Erreur lors du traitement des données';

  @override
  String get testDetectionLogicTitle => 'Tester la logique de détection';

  @override
  String get testDetectionLogicSubtitle =>
      'Simuler une notification pour vérifier l\'analyse';

  @override
  String get showDetectionHistoryTitle => 'Afficher l\'historique de détection';

  @override
  String get showDetectionHistorySubtitle =>
      'Afficher les journaux détaillés des transactions détectées';

  @override
  String get autoDeleteUndetectedTitle =>
      'Supprimer automatiquement l\'historique non détecté';

  @override
  String get autoDeleteUndetectedSubtitle =>
      'Supprimer les éléments non détectés après 12 heures';

  @override
  String get testParserDiagnosticTitle => 'Diagnostic de test de l\'analyseur';

  @override
  String get testParserDiagnosticDesc =>
      'Entrez un exemple de message de notification pour voir comment notre analyseur le traite.';

  @override
  String get pasteNotificationHint =>
      'Collez le texte de la notification ici...';

  @override
  String get statusBalanceSync => 'Synchronisation du solde';

  @override
  String get statusNoActionDetected => 'Aucune action détectée';

  @override
  String get transactionType => 'Type';

  @override
  String get resultLabelMerchant => 'Commerçant';

  @override
  String get resultLabelBank => 'Banque';

  @override
  String get balanceLabel => 'Solde';

  @override
  String get resultLabelConfidence => 'Confiance';

  @override
  String get unknown => 'Inconnu';

  @override
  String get general => 'Général';

  @override
  String get notAvailable => 'N/D';

  @override
  String get close => 'Fermer';

  @override
  String get parseText => 'Analyser le texte';

  @override
  String get deleteAllDataTitle => 'Supprimer toutes les données';

  @override
  String get deleteAllDataWarningSubtitle => '⚠️ Cette action est irréversible';

  @override
  String get resetIntroTitle => 'Réinitialiser l\'introduction';

  @override
  String get resetIntroSubtitle => 'Réafficher les écrans d\'introduction';

  @override
  String get incomeCategories => 'Catégories de revenus';

  @override
  String get incomeCategoriesDesc => 'Gérer les catégories de revenus';

  @override
  String get expenseCategories => 'Catégories de dépenses';

  @override
  String get expenseCategoriesDesc => 'Gérer les catégories de dépenses';

  @override
  String get accountsTitle => 'Comptes';

  @override
  String get accountsDesc => 'Gérer vos comptes';

  @override
  String get enterNamePlaceholder => 'Entrez le nom...';

  @override
  String get aboutAppSubtitle =>
      'Développeur, confidentialité, assistance et plus';

  @override
  String get setMonthlySpendingLimit =>
      'Définir une limite de dépenses mensuelle';

  @override
  String get joinPreviousMonthBalanceTitle =>
      'Inclure le solde du mois précédent';

  @override
  String get joinPreviousMonthBalanceDesc =>
      'Inclure le solde du mois précédent dans le total actuel';

  @override
  String get setMonthlyBudgetTitle => 'Définir le budget mensuel';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get budgetUpdated => 'Budget mis à jour !';

  @override
  String get confirmDeleteTitle => 'Confirmer la suppression';

  @override
  String get confirmDeleteAllDesc =>
      'Voulez-vous vraiment supprimer toutes les transactions et réinitialiser votre solde ? Cette action est irréversible.';

  @override
  String get deleteAllButton => 'Tout supprimer';

  @override
  String get failedDeleteAllData =>
      'Impossible de supprimer toutes les données. Veuillez réessayer.';

  @override
  String get resetIntroConfirmDesc =>
      'Cela réaffichera les écrans d\'introduction la prochaine fois que vous ouvrirez l\'application. Vos données resteront inchangées.';

  @override
  String editFieldTitle(String field) {
    return 'Modifier $field';
  }

  @override
  String enterFieldHint(String field) {
    return 'Saisissez $field';
  }

  @override
  String statusLabel(String status) {
    return 'Statut : $status';
  }

  @override
  String manageItemsTitle(String type) {
    return 'Gérer $type';
  }

  @override
  String noItemsFound(String type) {
    return 'Aucun $type trouvé.';
  }

  @override
  String addItemButton(String type) {
    return 'Ajouter $type';
  }

  @override
  String editItemTitle(String type) {
    return 'Modifier $type';
  }

  @override
  String itemNameLabel(String type) {
    return 'Nom du $type';
  }

  @override
  String monthlyLimitSubtitle(String budget) {
    return 'Limite mensuelle : $budget';
  }

  @override
  String failedResetIntro(String error) {
    return 'Échec de la réinitialisation de l\'introduction. Veuillez réessayer.\\n$error';
  }

  @override
  String get failedUpdateAutoDetection =>
      'Échec de la mise à jour de la détection automatique';

  @override
  String get actionCannotBeUndone => 'Cette action est irréversible.';

  @override
  String deleteTransactionsCountTitle(int count) {
    return 'Supprimer $count transactions ?';
  }

  @override
  String deletedTransactionsCount(int count) {
    return '$count transactions supprimées';
  }

  @override
  String get transactionHistoryTitle => 'Historique des transactions';

  @override
  String get upiIdMissingTitle => 'ID UPI manquant';

  @override
  String get upiIdMissingDesc =>
      'Veuillez définir votre ID UPI dans les paramètres pour demander de l\'argent via un code QR.';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get recipientFallback => 'Destinataire';

  @override
  String get paymentLinkCopied => 'Lien de paiement copié !';

  @override
  String get linkButton => 'Lien';

  @override
  String get shareQr => 'Partager le QR';

  @override
  String get upiPaymentLinkSubject => 'Lien de paiement UPI';

  @override
  String requestingFrom(String name) {
    return 'Demande à $name';
  }

  @override
  String upiIdColonValue(String id) {
    return 'ID UPI : $id';
  }

  @override
  String failedShareQr(String error) {
    return 'Échec du partage de l\'image QR : $error';
  }

  @override
  String payViaUpiQrFor(String name) {
    return 'Payer via QR UPI pour $name';
  }

  @override
  String get pleaseSelectPerson => 'Veuillez sélectionner une personne';

  @override
  String get amountInInr => 'Montant en INR';

  @override
  String get currency => 'Devise';

  @override
  String get selectCurrency => 'Choisir la devise';

  @override
  String get searchCurrency => 'Rechercher une devise';

  @override
  String get autoDetectCurrency => 'Détection automatique de la devise';

  @override
  String get autoDetectCurrencyDesc =>
      'Correspond automatiquement à la région de votre appareil';

  @override
  String get popularCurrencies => 'Populaires';

  @override
  String get allCurrencies => 'Toutes les devises';

  @override
  String get noCurrencyFound => 'Aucune devise trouvée';

  @override
  String get requiredField => 'Requis';

  @override
  String get quickCategories => 'Catégories rapides';

  @override
  String get saveToPerson => 'Enregistrer sur une personne';

  @override
  String get noPeopleCreateHint =>
      'Aucune personne ajoutée pour l\'instant. Créez des personnes dans la section Personnes.';

  @override
  String get selectPersonLabel => 'Sélectionner une personne';

  @override
  String get selectCategoryTitle => 'Sélectionner une catégorie';

  @override
  String get updateTransactionButton => 'Mettre à jour la transaction';

  @override
  String get saveTransactionButton => 'Enregistrer la transaction';

  @override
  String linkedToRecord(String name) {
    return 'Lié à l\'enregistrement de $name';
  }

  @override
  String selectItemTitle(String type) {
    return 'Sélectionner $type';
  }

  @override
  String get personSingular => 'Personne';

  @override
  String get error => 'Erreur';

  @override
  String get retry => 'Réessayer';

  @override
  String get setupFailedRetry =>
      'Échec de la configuration. Veuillez réessayer.';

  @override
  String get backButton => 'Retour';

  @override
  String get voiceInputExampleHint =>
      'Dites par exemple « Dépensé 500 pour le dîner »';

  @override
  String get autoDetectionEnabledSuccess =>
      'Détection automatique activée avec succès !';

  @override
  String openingRequestQrFor(String name) {
    return 'Ouverture du QR de demande pour $name';
  }

  @override
  String get add => 'Ajouter';

  @override
  String get uncategorized => 'Non catégorisé';

  @override
  String get timeLabel => 'Heure';

  @override
  String get statusColumnLabel => 'Statut';

  @override
  String get completedLabel => 'Terminé';

  @override
  String get notes => 'Notes';

  @override
  String get serviceLabel => 'Service';

  @override
  String get refIdLabel => 'ID de référence';

  @override
  String get detectedViaLabel => 'Détecté via';

  @override
  String get attachmentsLabel => 'Pièces jointes';

  @override
  String get originalLogLabel => 'Journal original';

  @override
  String get noNoteProvided => 'Aucune note fournie';

  @override
  String get tapToUnlock => 'Appuyez pour déverrouiller';

  @override
  String get addPeopleEmptyDesc =>
      'Ajoutez des personnes pour suivre les transactions avec elles';

  @override
  String get noPeopleMatchSearch =>
      'Aucune personne ne correspond à votre recherche';

  @override
  String get okay => 'OK';

  @override
  String get confirm => 'Confirmer';

  @override
  String get ok => 'OK';

  @override
  String get unexpectedErrorOccurred => 'Une erreur inattendue s\'est produite';

  @override
  String get autoDetectionActive => 'Détection automatique active';

  @override
  String get unknownSource => 'Source inconnue';

  @override
  String get noMessageContentAvailable => 'Aucun contenu de message disponible';

  @override
  String get addManually => 'Ajouter manuellement';

  @override
  String get detectedAsIncome => 'Détecté comme revenu';

  @override
  String get detectedAsExpense => 'Détecté comme dépense';

  @override
  String sourceColonValue(String source) {
    return 'Source : $source';
  }

  @override
  String get sourceNotification => 'Notification';

  @override
  String get sourceSms => 'SMS';

  @override
  String get sourceRecheckHistory => 'Historique revérifié';

  @override
  String get sourceManualAddHistory => 'Ajout manuel (historique)';

  @override
  String get recentLabel => 'Récent';

  @override
  String get oldestLabel => 'Le plus ancien';

  @override
  String get highestLabel => 'Le plus élevé';

  @override
  String get lowestLabel => 'Le plus bas';

  @override
  String get glassBlurEffectsTitle => 'Effets de flou vitré';

  @override
  String get glassBlurEffectsSubtitle =>
      'Flou doux sur les panneaux vitrés et les boîtes de dialogue — utilise plus de puissance de traitement ; désactivez-le sur les anciens appareils pour plus de fluidité.';

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
