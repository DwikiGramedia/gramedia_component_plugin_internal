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

  static TextStyle bodyL = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    height: 28 / 18,
    color: defaultColor,
  );
  static TextStyle bodyLExtraBold = bodyL;
  static TextStyle bodyLMedium = bodyL.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyLSemiboldUnderline = bodyL.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyM = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 16,
    height: 24 / 16,
    color: defaultColor,
  );
  static TextStyle bodyMExtraBold = bodyM;
  static TextStyle bodyMMedium = bodyM.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyMSemiboldUnderline = bodyM.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 14,
    height: 20 / 14,
    color: defaultColor,
  );
  static TextStyle bodySExtraBold = bodyS;
  static TextStyle bodySMedium = bodyS.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodySSemiboldUnderline = bodyS.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyXS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 12,
    height: 16 / 12,
    color: defaultColor,
  );
  static TextStyle bodyXSExtraBold = bodyXS;
  static TextStyle bodyXSMedium = bodyXS.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyXSSemiboldUnderline = bodyXS.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle body2XS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    fontSize: 10,
    height: 14 / 10,
    color: defaultColor,
  );
  static TextStyle body2XSExtraBold = body2XS;
  static TextStyle body2XSMedium = body2XS.copyWith(
    fontWeight: FontWeight.w500,
  );
  static TextStyle body2XSSemiboldUnderline = body2XS.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );
}
