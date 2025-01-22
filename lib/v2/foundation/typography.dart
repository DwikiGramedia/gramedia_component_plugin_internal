import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

/// ## Usage
/// access only the static Font, for exampel ```PapyrusFont.h1```
///
/// if neccessary, you could customize the font by using ```.copyWith()``` method
///
/// for example ```PapyrusFont.h1.copyWith(fontSize: 70)```
class PapyrusFont {
  static const defaultColor = PapyrusColors.neutral700;

  static TextStyle h1 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 40,
    height: 48 / 40,
    color: defaultColor,
  );
  static TextStyle h2 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 32,
    height: 40 / 32,
    color: defaultColor,
  );
  static TextStyle h3 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 28,
    height: 36 / 28,
    color: defaultColor,
  );
  static TextStyle h4 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 24,
    height: 32 / 24,
    color: defaultColor,
  );
  static TextStyle h5 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 20,
    height: 28 / 20,
    color: defaultColor,
  );
  static TextStyle h6 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    height: 28 / 18,
    color: defaultColor,
  );

  static TextStyle bodyLExtraBold = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    height: 28 / 18,
    color: defaultColor,
  );
  static TextStyle bodyLMedium = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 28 / 18,
    color: defaultColor,
  );
  static TextStyle bodyLSemiboldUnderline = GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontSize: 18,
    height: 28 / 18,
    color: defaultColor,
  );

  static TextStyle bodyMExtraBold = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 16,
    height: 24 / 16,
    color: defaultColor,
  );
  static TextStyle bodyMMedium = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
    color: defaultColor,
  );
  static TextStyle bodyMSemiboldUnderline = GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontSize: 16,
    height: 24 / 16,
    color: defaultColor,
  );

  static TextStyle bodySExtraBold = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 14,
    height: 20 / 14,
    color: defaultColor,
  );
  static TextStyle bodySMedium = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 20 / 14,
    color: defaultColor,
  );
  static TextStyle bodySSemiboldUnderline = GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontSize: 14,
    height: 20 / 14,
    color: defaultColor,
  );

  static TextStyle bodyXSExtraBold = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 12,
    height: 16 / 12,
    color: defaultColor,
  );
  static TextStyle bodyXSMedium = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 16 / 12,
    color: defaultColor,
  );
  static TextStyle bodyXSSemiboldUnderline = GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontSize: 12,
    height: 16 / 12,
    color: defaultColor,
  );

  static TextStyle body2XSExtraBold = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 10,
    height: 14 / 10,
    color: defaultColor,
  );
  static TextStyle body2XSMedium = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 14 / 10,
    color: defaultColor,
  );
  static TextStyle body2XSSemiboldUnderline = GoogleFonts.urbanist(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontSize: 10,
    height: 14 / 10,
    color: defaultColor,
  );
}
