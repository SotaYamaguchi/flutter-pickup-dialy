import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // ライトテーマをベースにアプリのテーマを改変
  final baseTheme = ThemeData.light();

  // Button color
  const accentColor = Color(0xFF446CCA);

  // Default font
  const defaultFont = 'Montserrat';

  final baseTextTheme = baseTheme.textTheme;

  // textTheme.headline6 AppBarヘッダー
  return ThemeData(
    accentColor: accentColor,
    fontFamily: defaultFont,
    textTheme: baseTheme.textTheme.copyWith(
      subtitle1: baseTextTheme.subtitle1.copyWith(
        fontFamily: defaultFont,
        fontSize: 20,
        letterSpacing: 3,
      ),
      subtitle2: baseTextTheme.subtitle2.copyWith(
        fontFamily: defaultFont,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 3,
      ),
      button: baseTextTheme.button.copyWith(fontFamily: defaultFont),
      overline: baseTextTheme.overline.copyWith(fontFamily: defaultFont),
      caption: baseTextTheme.caption.copyWith(fontFamily: defaultFont),
      bodyText1: baseTextTheme.bodyText1.copyWith(fontFamily: defaultFont),
      bodyText2: baseTextTheme.bodyText2.copyWith(fontFamily: defaultFont),
      headline1: baseTextTheme.headline1.copyWith(
        fontFamily: defaultFont,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 3,
      ),
      headline2: baseTextTheme.headline2.copyWith(fontFamily: defaultFont),
      headline3: baseTextTheme.headline3.copyWith(fontFamily: defaultFont),
      headline4: baseTextTheme.headline4.copyWith(fontFamily: defaultFont),
      headline5: baseTextTheme.headline5.copyWith(fontFamily: defaultFont),
      headline6: baseTextTheme.headline6.copyWith(
        fontWeight: FontWeight.bold,
        fontFamily: defaultFont,
      ),
    ),
    buttonColor: accentColor,
    primaryColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
