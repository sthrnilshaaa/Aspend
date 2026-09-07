/// Central source of truth for outbound links (and any related
/// non-translatable strings, e.g. package identifiers) used across the app.
///
/// Keep this the single place these URLs are defined — screens should
/// reference [AppLinks] rather than hardcoding a URL inline, so support
/// links, the repo URL, and the store listing only ever need updating here.
class AppLinks {
  AppLinks._();

  /// GitHub repository for the project.
  static const String githubRepo = 'https://github.com/SthrNilshaaa/Aspend';

  /// Privacy policy document, hosted in the repo.
  static const String privacyPolicy =
      'https://sites.google.com/view/privacy-policy-for-aspend/home';

  /// Telegram group used for user support.
  static const String telegramSupport = 'https://t.me/aspends_supports';

  /// Android application ID, used to build the Play Store links below.
  static const String androidPackageId = 'org.x.aspend.ns';

  /// Opens directly in the Play Store app when it's installed.
  static const String playStoreAppUri =
      'market://details?id=$androidPackageId';

  /// Web fallback for the Play Store listing, used when the Play Store
  /// app isn't available to handle [playStoreAppUri].
  static const String playStoreWebUrl =
      'https://play.google.com/store/apps/details?id=$androidPackageId';
}
