import 'dart:ui';

import '../const/app_currencies.dart';
import '../repositories/settings_repository.dart';

/// Detects a device's likely currency from its system region and resolves
/// the currency the app should currently be showing amounts in.
class CurrencyService {
  CurrencyService._();

  /// ISO 3166-1 alpha-2 country code -> ISO 4217 currency code, covering the
  /// countries/territories for every currency in [AppCurrencies.all].
  static const Map<String, String> _countryToCurrency = {
    // India
    'IN': 'INR',
    // United States & territories
    'US': 'USD', 'PR': 'USD', 'EC': 'USD', 'SV': 'USD', 'PA': 'USD',
    'TL': 'USD', 'ZW': 'USD', 'MH': 'USD', 'FM': 'USD', 'PW': 'USD',
    // Eurozone
    'DE': 'EUR', 'FR': 'EUR', 'IT': 'EUR', 'ES': 'EUR', 'NL': 'EUR',
    'BE': 'EUR', 'AT': 'EUR', 'IE': 'EUR', 'PT': 'EUR', 'FI': 'EUR',
    'GR': 'EUR', 'LU': 'EUR', 'SK': 'EUR', 'SI': 'EUR', 'EE': 'EUR',
    'LV': 'EUR', 'LT': 'EUR', 'CY': 'EUR', 'MT': 'EUR', 'HR': 'EUR',
    'AD': 'EUR', 'MC': 'EUR', 'SM': 'EUR', 'VA': 'EUR', 'XK': 'EUR',
    'ME': 'EUR',
    // United Kingdom
    'GB': 'GBP', 'IM': 'GBP', 'JE': 'GBP', 'GG': 'GBP',
    // Japan
    'JP': 'JPY',
    // China
    'CN': 'CNY',
    // Australia & territories
    'AU': 'AUD', 'CX': 'AUD', 'CC': 'AUD', 'NR': 'AUD', 'TV': 'AUD',
    'KI': 'AUD',
    // Canada
    'CA': 'CAD',
    // Switzerland
    'CH': 'CHF', 'LI': 'CHF',
    // Hong Kong
    'HK': 'HKD',
    // Singapore
    'SG': 'SGD',
    // New Zealand & territories
    'NZ': 'NZD', 'CK': 'NZD', 'NU': 'NZD',
    // South Korea
    'KR': 'KRW',
    // Mexico
    'MX': 'MXN',
    // Brazil
    'BR': 'BRL',
    // South Africa
    'ZA': 'ZAR', 'LS': 'ZAR', 'SZ': 'ZAR', 'NA': 'ZAR',
    // Russia
    'RU': 'RUB',
    // Turkey
    'TR': 'TRY',
    // UAE
    'AE': 'AED',
    // Saudi Arabia
    'SA': 'SAR',
    // Qatar
    'QA': 'QAR',
    // Kuwait
    'KW': 'KWD',
    // Bahrain
    'BH': 'BHD',
    // Oman
    'OM': 'OMR',
    // Jordan
    'JO': 'JOD',
    // Israel
    'IL': 'ILS',
    // Egypt
    'EG': 'EGP',
    // Nigeria
    'NG': 'NGN',
    // Kenya
    'KE': 'KES',
    // Ghana
    'GH': 'GHS',
    // Pakistan
    'PK': 'PKR',
    // Bangladesh
    'BD': 'BDT',
    // Sri Lanka
    'LK': 'LKR',
    // Nepal
    'NP': 'NPR',
    // Indonesia
    'ID': 'IDR',
    // Malaysia
    'MY': 'MYR',
    // Thailand
    'TH': 'THB',
    // Philippines
    'PH': 'PHP',
    // Vietnam
    'VN': 'VND',
    // Taiwan
    'TW': 'TWD',
    // Poland
    'PL': 'PLN',
    // Czechia
    'CZ': 'CZK',
    // Hungary
    'HU': 'HUF',
    // Romania
    'RO': 'RON',
    // Sweden
    'SE': 'SEK',
    // Norway
    'NO': 'NOK',
    // Denmark & territories
    'DK': 'DKK', 'FO': 'DKK', 'GL': 'DKK',
    // Ukraine
    'UA': 'UAH',
    // Argentina
    'AR': 'ARS',
    // Chile
    'CL': 'CLP',
    // Colombia
    'CO': 'COP',
    // Peru
    'PE': 'PEN',
    // Uruguay
    'UY': 'UYU',
    // Ethiopia
    'ET': 'ETB',
    // Tanzania
    'TZ': 'TZS',
    // Uganda
    'UG': 'UGX',
    // Morocco
    'MA': 'MAD',
    // Algeria
    'DZ': 'DZD',
    // Tunisia
    'TN': 'TND',
    // Iceland
    'IS': 'ISK',
    // Bulgaria
    'BG': 'BGN',
  };

  /// Reads the device's system region (no location permission required) and
  /// maps it to a supported currency, falling back to [AppCurrencies.fallback]
  /// when the region is unknown or unavailable.
  static AppCurrency detectFromDevice() {
    try {
      final locales = PlatformDispatcher.instance.locales;
      for (final locale in locales) {
        final country = locale.countryCode;
        if (country != null && _countryToCurrency.containsKey(country)) {
          return AppCurrencies.byCode(_countryToCurrency[country]);
        }
      }
    } catch (_) {
      // PlatformDispatcher can be unavailable in some test/isolate contexts.
    }
    return AppCurrencies.fallback;
  }

  /// The currency the app should currently render amounts in: the user's
  /// explicit choice if one is stored, otherwise a live device-region
  /// detection (when auto-detect is on), otherwise the app default.
  static AppCurrency resolveCurrency(SettingsRepository repository) {
    final savedCode = repository.getCurrencyCode();
    if (savedCode != null) return AppCurrencies.byCode(savedCode);
    if (repository.getCurrencyAutoDetect()) return detectFromDevice();
    return AppCurrencies.fallback;
  }
}
