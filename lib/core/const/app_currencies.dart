/// A single supported currency: its ISO 4217 code, display symbol,
/// human-readable name and a flag emoji used in currency pickers.
class AppCurrency {
  final String code;
  final String symbol;
  final String name;
  final String flag;

  const AppCurrency({
    required this.code,
    required this.symbol,
    required this.name,
    required this.flag,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is AppCurrency && other.code == code);

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => code;
}

/// Static catalogue of the world's most widely used currencies plus helpers
/// to look one up by its ISO code.
class AppCurrencies {
  AppCurrencies._();

  /// Fallback currency used before detection/selection has happened and
  /// whenever a stored/detected code can't be resolved. Matches the app's
  /// historical (India-first) default so existing users see no change.
  static const AppCurrency fallback = inr;

  static const AppCurrency inr =
      AppCurrency(code: 'INR', symbol: '₹', name: 'Indian Rupee', flag: '🇮🇳');
  static const AppCurrency usd =
      AppCurrency(code: 'USD', symbol: '\$', name: 'US Dollar', flag: '🇺🇸');
  static const AppCurrency eur =
      AppCurrency(code: 'EUR', symbol: '€', name: 'Euro', flag: '🇪🇺');
  static const AppCurrency gbp = AppCurrency(
      code: 'GBP', symbol: '£', name: 'British Pound', flag: '🇬🇧');
  static const AppCurrency jpy =
      AppCurrency(code: 'JPY', symbol: '¥', name: 'Japanese Yen', flag: '🇯🇵');
  static const AppCurrency cny = AppCurrency(
      code: 'CNY', symbol: 'CN¥', name: 'Chinese Yuan', flag: '🇨🇳');
  static const AppCurrency aud = AppCurrency(
      code: 'AUD', symbol: 'A\$', name: 'Australian Dollar', flag: '🇦🇺');
  static const AppCurrency cad = AppCurrency(
      code: 'CAD', symbol: 'CA\$', name: 'Canadian Dollar', flag: '🇨🇦');
  static const AppCurrency chf = AppCurrency(
      code: 'CHF', symbol: 'CHF', name: 'Swiss Franc', flag: '🇨🇭');
  static const AppCurrency hkd = AppCurrency(
      code: 'HKD', symbol: 'HK\$', name: 'Hong Kong Dollar', flag: '🇭🇰');
  static const AppCurrency sgd = AppCurrency(
      code: 'SGD', symbol: 'S\$', name: 'Singapore Dollar', flag: '🇸🇬');
  static const AppCurrency nzd = AppCurrency(
      code: 'NZD', symbol: 'NZ\$', name: 'New Zealand Dollar', flag: '🇳🇿');
  static const AppCurrency krw = AppCurrency(
      code: 'KRW', symbol: '₩', name: 'South Korean Won', flag: '🇰🇷');
  static const AppCurrency mxn = AppCurrency(
      code: 'MXN', symbol: 'MX\$', name: 'Mexican Peso', flag: '🇲🇽');
  static const AppCurrency brl = AppCurrency(
      code: 'BRL', symbol: 'R\$', name: 'Brazilian Real', flag: '🇧🇷');
  static const AppCurrency zar = AppCurrency(
      code: 'ZAR', symbol: 'R', name: 'South African Rand', flag: '🇿🇦');
  static const AppCurrency rub = AppCurrency(
      code: 'RUB', symbol: '₽', name: 'Russian Ruble', flag: '🇷🇺');
  static const AppCurrency tryy = AppCurrency(
      code: 'TRY', symbol: '₺', name: 'Turkish Lira', flag: '🇹🇷');
  static const AppCurrency aed = AppCurrency(
      code: 'AED', symbol: 'AED', name: 'UAE Dirham', flag: '🇦🇪');
  static const AppCurrency sar = AppCurrency(
      code: 'SAR', symbol: 'SAR', name: 'Saudi Riyal', flag: '🇸🇦');
  static const AppCurrency qar = AppCurrency(
      code: 'QAR', symbol: 'QAR', name: 'Qatari Riyal', flag: '🇶🇦');
  static const AppCurrency kwd = AppCurrency(
      code: 'KWD', symbol: 'KWD', name: 'Kuwaiti Dinar', flag: '🇰🇼');
  static const AppCurrency bhd = AppCurrency(
      code: 'BHD', symbol: 'BHD', name: 'Bahraini Dinar', flag: '🇧🇭');
  static const AppCurrency omr = AppCurrency(
      code: 'OMR', symbol: 'OMR', name: 'Omani Rial', flag: '🇴🇲');
  static const AppCurrency jod = AppCurrency(
      code: 'JOD', symbol: 'JOD', name: 'Jordanian Dinar', flag: '🇯🇴');
  static const AppCurrency ils = AppCurrency(
      code: 'ILS', symbol: '₪', name: 'Israeli New Shekel', flag: '🇮🇱');
  static const AppCurrency egp = AppCurrency(
      code: 'EGP', symbol: 'E£', name: 'Egyptian Pound', flag: '🇪🇬');
  static const AppCurrency ngn = AppCurrency(
      code: 'NGN', symbol: '₦', name: 'Nigerian Naira', flag: '🇳🇬');
  static const AppCurrency kes = AppCurrency(
      code: 'KES', symbol: 'KSh', name: 'Kenyan Shilling', flag: '🇰🇪');
  static const AppCurrency ghs = AppCurrency(
      code: 'GHS', symbol: 'GH₵', name: 'Ghanaian Cedi', flag: '🇬🇭');
  static const AppCurrency pkr = AppCurrency(
      code: 'PKR', symbol: '₨', name: 'Pakistani Rupee', flag: '🇵🇰');
  static const AppCurrency bdt = AppCurrency(
      code: 'BDT', symbol: '৳', name: 'Bangladeshi Taka', flag: '🇧🇩');
  static const AppCurrency lkr = AppCurrency(
      code: 'LKR', symbol: 'Rs', name: 'Sri Lankan Rupee', flag: '🇱🇰');
  static const AppCurrency npr = AppCurrency(
      code: 'NPR', symbol: 'Rs', name: 'Nepalese Rupee', flag: '🇳🇵');
  static const AppCurrency idr = AppCurrency(
      code: 'IDR', symbol: 'Rp', name: 'Indonesian Rupiah', flag: '🇮🇩');
  static const AppCurrency myr = AppCurrency(
      code: 'MYR', symbol: 'RM', name: 'Malaysian Ringgit', flag: '🇲🇾');
  static const AppCurrency thb = AppCurrency(
      code: 'THB', symbol: '฿', name: 'Thai Baht', flag: '🇹🇭');
  static const AppCurrency php = AppCurrency(
      code: 'PHP', symbol: '₱', name: 'Philippine Peso', flag: '🇵🇭');
  static const AppCurrency vnd = AppCurrency(
      code: 'VND', symbol: '₫', name: 'Vietnamese Dong', flag: '🇻🇳');
  static const AppCurrency twd = AppCurrency(
      code: 'TWD', symbol: 'NT\$', name: 'New Taiwan Dollar', flag: '🇹🇼');
  static const AppCurrency pln = AppCurrency(
      code: 'PLN', symbol: 'zł', name: 'Polish Złoty', flag: '🇵🇱');
  static const AppCurrency czk = AppCurrency(
      code: 'CZK', symbol: 'Kč', name: 'Czech Koruna', flag: '🇨🇿');
  static const AppCurrency huf = AppCurrency(
      code: 'HUF', symbol: 'Ft', name: 'Hungarian Forint', flag: '🇭🇺');
  static const AppCurrency ron = AppCurrency(
      code: 'RON', symbol: 'lei', name: 'Romanian Leu', flag: '🇷🇴');
  static const AppCurrency sek = AppCurrency(
      code: 'SEK', symbol: 'kr', name: 'Swedish Krona', flag: '🇸🇪');
  static const AppCurrency nok = AppCurrency(
      code: 'NOK', symbol: 'kr', name: 'Norwegian Krone', flag: '🇳🇴');
  static const AppCurrency dkk = AppCurrency(
      code: 'DKK', symbol: 'kr', name: 'Danish Krone', flag: '🇩🇰');
  static const AppCurrency uah = AppCurrency(
      code: 'UAH', symbol: '₴', name: 'Ukrainian Hryvnia', flag: '🇺🇦');
  static const AppCurrency ars = AppCurrency(
      code: 'ARS', symbol: 'AR\$', name: 'Argentine Peso', flag: '🇦🇷');
  static const AppCurrency clp = AppCurrency(
      code: 'CLP', symbol: 'CL\$', name: 'Chilean Peso', flag: '🇨🇱');
  static const AppCurrency cop = AppCurrency(
      code: 'COP', symbol: 'CO\$', name: 'Colombian Peso', flag: '🇨🇴');
  static const AppCurrency pen = AppCurrency(
      code: 'PEN', symbol: 'S/', name: 'Peruvian Sol', flag: '🇵🇪');
  static const AppCurrency uyu = AppCurrency(
      code: 'UYU', symbol: '\$U', name: 'Uruguayan Peso', flag: '🇺🇾');
  static const AppCurrency etb = AppCurrency(
      code: 'ETB', symbol: 'Br', name: 'Ethiopian Birr', flag: '🇪🇹');
  static const AppCurrency tzs = AppCurrency(
      code: 'TZS', symbol: 'TSh', name: 'Tanzanian Shilling', flag: '🇹🇿');
  static const AppCurrency ugx = AppCurrency(
      code: 'UGX', symbol: 'USh', name: 'Ugandan Shilling', flag: '🇺🇬');
  static const AppCurrency mad = AppCurrency(
      code: 'MAD', symbol: 'MAD', name: 'Moroccan Dirham', flag: '🇲🇦');
  static const AppCurrency dzd = AppCurrency(
      code: 'DZD', symbol: 'DZD', name: 'Algerian Dinar', flag: '🇩🇿');
  static const AppCurrency tnd = AppCurrency(
      code: 'TND', symbol: 'TND', name: 'Tunisian Dinar', flag: '🇹🇳');
  static const AppCurrency isk = AppCurrency(
      code: 'ISK', symbol: 'kr', name: 'Icelandic Króna', flag: '🇮🇸');
  static const AppCurrency bgn = AppCurrency(
      code: 'BGN', symbol: 'лв', name: 'Bulgarian Lev', flag: '🇧🇬');

  /// Every supported currency, ordered with the most commonly used ones
  /// first — this order also drives the "Popular" section of the picker.
  static const List<AppCurrency> all = [
    inr,
    usd,
    eur,
    gbp,
    jpy,
    cny,
    aud,
    cad,
    chf,
    hkd,
    sgd,
    nzd,
    krw,
    aed,
    sar,
    mxn,
    brl,
    zar,
    rub,
    tryy,
    qar,
    kwd,
    bhd,
    omr,
    jod,
    ils,
    egp,
    ngn,
    kes,
    ghs,
    pkr,
    bdt,
    lkr,
    npr,
    idr,
    myr,
    thb,
    php,
    vnd,
    twd,
    pln,
    czk,
    huf,
    ron,
    sek,
    nok,
    dkk,
    uah,
    ars,
    clp,
    cop,
    pen,
    uyu,
    etb,
    tzs,
    ugx,
    mad,
    dzd,
    tnd,
    isk,
    bgn,
  ];

  /// Codes shown in the picker's "Popular" shortcut row.
  static const List<String> popularCodes = [
    'INR',
    'USD',
    'EUR',
    'GBP',
    'JPY',
    'CNY',
    'AUD',
    'CAD',
    'AED',
    'SGD',
  ];

  static AppCurrency byCode(String? code) {
    if (code == null) return fallback;
    for (final currency in all) {
      if (currency.code == code) return currency;
    }
    return fallback;
  }
}
