import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get adaptiveTextColor => Theme.of(this).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;

  TextStyle baseTextStyle(String fontFamily, FontWeight fontWeight) {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: adaptiveTextColor,
    );
  }

  // HelveticaNeue Text Styles
  TextStyle get helveticaNeueRegular =>
      baseTextStyle('HelveticaNeue', FontWeight.w400);
  TextStyle get helveticaNeueBold =>
      baseTextStyle('HelveticaNeue', FontWeight.w700);
  TextStyle get helveticaNeueBlack =>
      baseTextStyle('HelveticaNeue', FontWeight.w900);
  TextStyle get helveticaNeueLight =>
      baseTextStyle('HelveticaNeue', FontWeight.w300);
  TextStyle get helveticaNeueThin =>
      baseTextStyle('HelveticaNeue', FontWeight.w100);
  TextStyle get helveticaNeueSemiBold =>
      baseTextStyle('HelveticaNeue', FontWeight.w600);

  TextStyle get helveticaNeueRegular12 =>
      helveticaNeueRegular.copyWith(fontSize: 12);
  TextStyle get helveticaNeueRegular14 =>
      helveticaNeueRegular.copyWith(fontSize: 14);
  TextStyle get helveticaNeueRegular16 =>
      helveticaNeueRegular.copyWith(fontSize: 16);
  TextStyle get helveticaNeueSemiBold26 =>
      helveticaNeueSemiBold.copyWith(fontSize: 26);
  TextStyle get helveticaNeueSemiBold12 =>
      helveticaNeueSemiBold.copyWith(fontSize: 12);
  TextStyle get helveticaNeueBold18 => helveticaNeueBold.copyWith(fontSize: 18);
  TextStyle get helveticaNeueBold20 => helveticaNeueBold.copyWith(fontSize: 20);
  TextStyle get helveticaNeueBlack22 =>
      helveticaNeueBlack.copyWith(fontSize: 22);
  TextStyle get helveticaNeueLight16 =>
      helveticaNeueLight.copyWith(fontSize: 16);
  TextStyle get helveticaNeueThin14 => helveticaNeueThin.copyWith(fontSize: 14);
  TextStyle get helveticaNeueItalic18 =>
      helveticaNeueRegular.copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get helveticaNeueBoldUnderlined16 => helveticaNeueBold.copyWith(
      fontSize: 16, decoration: TextDecoration.underline);

  TextStyle get helveticaNeueRegular12Gray =>
      helveticaNeueRegular12.copyWith(color: Colors.grey);
  TextStyle get helveticaNeueMedium16 =>
      baseTextStyle('HelveticaNeue', FontWeight.w500).copyWith(fontSize: 16);
  TextStyle get helveticaNeueSemiBold20 =>
      baseTextStyle('HelveticaNeue', FontWeight.w600).copyWith(fontSize: 20);
  TextStyle get helveticaNeueExtraBold22 =>
      baseTextStyle('HelveticaNeue', FontWeight.w800).copyWith(fontSize: 22);
  TextStyle get helveticaNeueBoldItalic18 =>
      baseTextStyle('HelveticaNeue', FontWeight.w700)
          .copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get helveticaNeueUnderlined14 =>
      helveticaNeueRegular14.copyWith(decoration: TextDecoration.underline);

  TextStyle get headlineLarge => helveticaNeueBold.copyWith(fontSize: 32);
  TextStyle get bodySmall => helveticaNeueLight.copyWith(fontSize: 14);
  TextStyle get titleMedium => helveticaNeueMedium16.copyWith(fontSize: 20);
}
