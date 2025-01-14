import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// ## Usage
/// access only the static Font, for exampel ```SmartlibFont.h1```
///
/// if neccessary, you could customize the font by using ```.copyWith()``` method
///
/// for example ```SmartlibFont.h1.copyWith(fontSize: 70)```
class SmartlibFont {
  static TextStyle h1 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: -1,
    fontSize: 40,
    height: 48,
  );
  static TextStyle h2 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: -0.75,
    fontSize: 32,
    height: 40,
  );
  static TextStyle h3 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
    fontSize: 28,
    height: 36,
  );
  static TextStyle h4 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: -0.25,
    fontSize: 24,
    height: 32,
  );
  static TextStyle h5 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    fontSize: 20,
    height: 28,
  );
  static TextStyle h6 = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
    fontSize: 18,
    height: 28,
  );

  static TextStyle bodyL = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
    fontSize: 18,
    height: 28,
  );
  static TextStyle bodyLExtraBold = bodyL;
  static TextStyle bodyLMedium = bodyL.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyLSemiboldUnderline = bodyL.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyM = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 1,
    fontSize: 16,
    height: 24,
  );
  static TextStyle bodyMExtraBold = bodyM;
  static TextStyle bodyMMedium = bodyM.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyMSemiboldUnderline = bodyM.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 2,
    fontSize: 14,
    height: 20,
  );
  static TextStyle bodySExtraBold = bodyS;
  static TextStyle bodySMedium = bodyS.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodySSemiboldUnderline = bodyS.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyXS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 3,
    fontSize: 12,
    height: 16,
  );
  static TextStyle bodyXSExtraBold = bodyXS;
  static TextStyle bodyXSMedium = bodyXS.copyWith(fontWeight: FontWeight.w500);
  static TextStyle bodyXSSemiboldUnderline = bodyXS.copyWith(
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle body2XS = GoogleFonts.urbanist(
    fontWeight: FontWeight.w800,
    letterSpacing: 4,
    fontSize: 10,
    height: 14,
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
