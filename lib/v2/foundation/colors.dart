import 'dart:ui';

/// ## Usage
/// access only the static Color, for exampel ```PapyrusColors.neutral50```
///
/// if neccessary, you could customize the Color by using build in methods
///
/// for example ```PapyrusColors.neutral50.withOpacity(0.5)```
class PapyrusColors {
  static const white = Color(0xffFFFFFF);

  static const neutral50 = Color(0xffF3F2F2);
  static const neutral150 = Color(0xffE5E3E3);
  static const neutral200 = Color(0xffBEBBBC);
  static const neutral500 = Color(0xff5A5556);
  static const neutral600 = Color(0xff3B3839);
  static const neutral700 = Color(0xff1E1B1B);

  static const brand50 = Color(0xffE0E4FF);
  static const brand200 = Color(0xff8793E0);
  static const brand500 = Color(0xff344BCC);
  static const brand600 = Color(0xff242F77);
  static const brand700 = Color(0xff101322);

  static const accent50 = Color(0xffAAFFFF);
  static const accent200 = Color(0xff3AD2D5);
  static const accent500 = Color(0xff039799);
  static const accent600 = Color(0xff015B5E);
  static const accent700 = Color(0xff002425);

  static const green50 = Color(0xffE0FFEE);
  static const green200 = Color(0xff01E078);
  static const green500 = Color(0xff01AB40);
  static const green600 = Color(0xff01580B);
  static const green700 = Color(0xff002700);

  static const yellow50 = Color(0xffFFFA97);
  static const yellow200 = Color(0xffFFDD6D);
  static const yellow500 = Color(0xffF8B804);
  static const yellow600 = Color(0xffB98903);
  static const yellow700 = Color(0xff674D03);

  static const red50 = Color(0xffFFE1E4);
  static const red200 = Color(0xffFF7885);
  static const red500 = Color(0xffDF3B52);
  static const red600 = Color(0xff99002A);
  static const red700 = Color(0xff480006);
}
