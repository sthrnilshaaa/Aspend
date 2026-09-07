import 'package:hive/hive.dart';
import '../const/app_constants.dart';

/// Tracks which of the app's one-time "pointer hint" tours (Home, People,
/// Person Details — see [ShowcaseView] usage on those pages) have already
/// been shown, so each only auto-plays the first time its screen is opened.
/// Backed by the same Hive settings box as `introCompleted`/`appLockEnabled`.
class TourService {
  TourService._();

  static const _homeKey = 'tourSeen_home';
  static const _peopleKey = 'tourSeen_people';
  static const _personDetailsKey = 'tourSeen_personDetails';

  static const _allKeys = [_homeKey, _peopleKey, _personDetailsKey];

  static Future<bool> hasSeenHome() => _hasSeen(_homeKey);
  static Future<bool> hasSeenPeople() => _hasSeen(_peopleKey);
  static Future<bool> hasSeenPersonDetails() => _hasSeen(_personDetailsKey);

  static Future<void> markHomeSeen() => _markSeen(_homeKey);
  static Future<void> markPeopleSeen() => _markSeen(_peopleKey);
  static Future<void> markPersonDetailsSeen() => _markSeen(_personDetailsKey);

  /// Clears every "seen" flag so all three tours play again next time their
  /// screen opens — used by the "Show tips again" setting.
  static Future<void> resetAll() async {
    final box = await Hive.openBox(AppConstants.settingsBox);
    for (final key in _allKeys) {
      await box.put(key, false);
    }
  }

  static Future<bool> _hasSeen(String key) async {
    final box = await Hive.openBox(AppConstants.settingsBox);
    return box.get(key, defaultValue: false) as bool;
  }

  static Future<void> _markSeen(String key) async {
    final box = await Hive.openBox(AppConstants.settingsBox);
    await box.put(key, true);
  }
}
