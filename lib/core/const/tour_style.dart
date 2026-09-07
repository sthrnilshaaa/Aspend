import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Shared, compact text styling for every pointer-hint tour tooltip
/// (`Showcase` widgets across Home/People/Person Details). Left unset, the
/// package falls back to Material's `titleLarge`/`titleSmall`, which reads
/// oversized for a one- or two-line hint — every Showcase call site passes
/// these instead so the bubbles stay small and consistent with each other.
class TourStyle {
  TourStyle._();

  static TextStyle title({Color color = Colors.black}) => GoogleFonts.dmSans(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: color,
      );

  static TextStyle description({Color color = Colors.black87}) =>
      GoogleFonts.dmSans(
        fontSize: 12,
        height: 1.35,
        color: color,
      );
}
