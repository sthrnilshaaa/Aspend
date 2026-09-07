import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Small hand-drawn scenes used by [EmptyStateView] wherever a list has
/// nothing in it yet (Home, People, Person Details, Transaction History,
/// Detection History, Charts) instead of a single generic Material icon in
/// a tinted circle. Each is composed from plain SVG primitives (no external
/// art assets) and takes its tones from the same accent color the rest of
/// that screen already uses, so it stays on-brand in both themes.
String _hex(Color color) =>
    '#${(color.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0')}';

/// Default footprint for every illustration below — big enough to read as a
/// deliberate scene, small enough to stay a supporting element above the
/// title rather than dominating the empty state.
const double _defaultIllustrationSize = 108;

/// The Home tab's "nothing tracked yet" illustration: a wallet with a card
/// peeking out of it and a floating "add" badge.
class WalletEmptyIllustration extends StatelessWidget {
  const WalletEmptyIllustration({
    super.key,
    required this.color,
    this.size = _defaultIllustrationSize,
  });

  /// Tint for the wallet/coins/badge — normally the screen's accent color.
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final tint = _hex(color);
    final cardFill = _hex(Theme.of(context).colorScheme.surface);

    final svg = '''
<svg width="200" height="200" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
  <circle cx="100" cy="104" r="86" fill="$tint" fill-opacity="0.07"/>
  <g transform="rotate(-8 100 65)">
    <rect x="60" y="40" width="78" height="48" rx="10" fill="$cardFill" stroke="$tint" stroke-opacity="0.5" stroke-width="3"/>
    <rect x="72" y="56" width="36" height="6" rx="3" fill="$tint" fill-opacity="0.35"/>
    <rect x="72" y="68" width="22" height="6" rx="3" fill="$tint" fill-opacity="0.2"/>
  </g>
  <rect x="36" y="82" width="128" height="80" rx="18" fill="$tint" fill-opacity="0.16" stroke="$tint" stroke-opacity="0.55" stroke-width="3"/>
  <rect x="36" y="104" width="128" height="14" fill="$tint" fill-opacity="0.14"/>
  <circle cx="100" cy="122" r="10" fill="$tint"/>
  <circle cx="52" cy="150" r="7" fill="$tint" fill-opacity="0.25" stroke="$tint" stroke-opacity="0.5" stroke-width="2"/>
  <circle cx="66" cy="158" r="6" fill="$tint" fill-opacity="0.2" stroke="$tint" stroke-opacity="0.45" stroke-width="2"/>
  <circle cx="156" cy="54" r="19" fill="$tint"/>
  <rect x="147" y="51.75" width="18" height="4.5" rx="2.25" fill="#ffffff"/>
  <rect x="153.75" y="45" width="4.5" height="18" rx="2.25" fill="#ffffff"/>
</svg>
''';

    return SvgPicture.string(svg, width: size, height: size);
  }
}

/// The People tab's "no one added yet" illustration: two overlapping
/// abstract silhouettes (a duller one behind, a solid one in front) with a
/// floating "add person" badge.
class PeopleEmptyIllustration extends StatelessWidget {
  const PeopleEmptyIllustration({
    super.key,
    required this.color,
    this.backColor,
    this.size = _defaultIllustrationSize,
  });

  /// Tint for the front silhouette and the add badge.
  final Color color;

  /// Tint for the back silhouette; defaults to a dimmer [color].
  final Color? backColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    final front = _hex(color);
    final back = _hex(backColor ?? color);

    final svg = '''
<svg width="200" height="200" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
  <circle cx="100" cy="104" r="86" fill="$front" fill-opacity="0.07"/>
  <circle cx="76" cy="72" r="22" fill="$back" fill-opacity="0.28" stroke="$back" stroke-opacity="0.5" stroke-width="3"/>
  <path d="M38 158 a38 46 0 0 1 76 0 z" fill="$back" fill-opacity="0.22"/>
  <circle cx="126" cy="80" r="26" fill="$front"/>
  <path d="M84 162 a42 46 0 0 1 84 0 z" fill="$front"/>
  <circle cx="168" cy="48" r="18" fill="$front"/>
  <rect x="159.5" y="45.75" width="17" height="4.5" rx="2.25" fill="#ffffff"/>
  <rect x="165.75" y="39.5" width="4.5" height="17" rx="2.25" fill="#ffffff"/>
</svg>
''';

    return SvgPicture.string(svg, width: size, height: size);
  }
}

/// The "no transaction records" illustration: a torn-edge receipt with a
/// few line items and a floating clock badge. Shared by every screen whose
/// empty state is really just "nothing logged yet" — Person Details,
/// Transaction History, Detection History — so that moment reads the same
/// way everywhere instead of a different generic icon per screen.
class ReceiptEmptyIllustration extends StatelessWidget {
  const ReceiptEmptyIllustration({
    super.key,
    required this.color,
    this.size = _defaultIllustrationSize,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final tint = _hex(color);

    final svg = '''
<svg width="200" height="200" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
  <circle cx="100" cy="104" r="86" fill="$tint" fill-opacity="0.07"/>
  <path d="M50 46 H150 V146 L140 154 L130 146 L120 154 L110 146 L100 154 L90 146 L80 154 L70 146 L60 154 L50 146 Z" fill="$tint" fill-opacity="0.16" stroke="$tint" stroke-opacity="0.55" stroke-width="3"/>
  <rect x="64" y="66" width="70" height="7" rx="3.5" fill="$tint" fill-opacity="0.3"/>
  <rect x="64" y="84" width="52" height="7" rx="3.5" fill="$tint" fill-opacity="0.22"/>
  <rect x="64" y="102" width="60" height="7" rx="3.5" fill="$tint" fill-opacity="0.18"/>
  <rect x="64" y="122" width="42" height="8" rx="4" fill="$tint" fill-opacity="0.4"/>
  <circle cx="156" cy="50" r="19" fill="$tint"/>
  <circle cx="156" cy="50" r="12" fill="none" stroke="#ffffff" stroke-opacity="0.55" stroke-width="2"/>
  <rect x="154.5" y="41" width="3" height="10" rx="1.5" fill="#ffffff"/>
  <rect x="155.5" y="49" width="8" height="3" rx="1.5" fill="#ffffff"/>
</svg>
''';

    return SvgPicture.string(svg, width: size, height: size);
  }
}

/// The Charts tab's "no data yet" illustration: an ascending bar chart with
/// a dotted trend line and a floating trend-arrow badge.
class ChartEmptyIllustration extends StatelessWidget {
  const ChartEmptyIllustration({
    super.key,
    required this.color,
    this.size = _defaultIllustrationSize,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final tint = _hex(color);

    final svg = '''
<svg width="200" height="200" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
  <circle cx="100" cy="110" r="86" fill="$tint" fill-opacity="0.07"/>
  <line x1="40" y1="150" x2="160" y2="150" stroke="$tint" stroke-opacity="0.3" stroke-width="2" stroke-linecap="round"/>
  <rect x="50" y="120" width="18" height="30" rx="4" fill="$tint" fill-opacity="0.16"/>
  <rect x="76" y="104" width="18" height="46" rx="4" fill="$tint" fill-opacity="0.24"/>
  <rect x="102" y="86" width="18" height="64" rx="4" fill="$tint" fill-opacity="0.34"/>
  <rect x="128" y="66" width="18" height="84" rx="4" fill="$tint" fill-opacity="0.46"/>
  <path d="M59 135 L85 110 L111 90 L137 58" fill="none" stroke="$tint" stroke-opacity="0.5" stroke-width="3" stroke-linecap="round" stroke-dasharray="1 8"/>
  <circle cx="156" cy="50" r="19" fill="$tint"/>
  <path d="M149 58 L163 44" stroke="#ffffff" stroke-width="3" stroke-linecap="round"/>
  <path d="M163 44 H155" stroke="#ffffff" stroke-width="3" stroke-linecap="round"/>
  <path d="M163 44 V52" stroke="#ffffff" stroke-width="3" stroke-linecap="round"/>
</svg>
''';

    return SvgPicture.string(svg, width: size, height: size);
  }
}
