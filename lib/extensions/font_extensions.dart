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

  TextStyle get poppinsRegular => baseTextStyle('Poppins', FontWeight.w400);
  TextStyle get poppinsBold => baseTextStyle('Poppins', FontWeight.w700);
  TextStyle get poppinsBlack => baseTextStyle('Poppins', FontWeight.w900);
  TextStyle get poppinsLight => baseTextStyle('Poppins', FontWeight.w300);
  TextStyle get poppinsThin => baseTextStyle('Poppins', FontWeight.w100);
  TextStyle get poppinsSemiBold => baseTextStyle('Poppins', FontWeight.w600);

  TextStyle get poppinsRegular12 => poppinsRegular.copyWith(fontSize: 12);
  TextStyle get poppinsRegular14 => poppinsRegular.copyWith(fontSize: 14);
  TextStyle get poppinsRegular16 => poppinsRegular.copyWith(fontSize: 16);
  TextStyle get poppinsSemiBold26 => poppinsSemiBold.copyWith(fontSize: 26);
  TextStyle get poppinsSemiBold12 => poppinsSemiBold.copyWith(fontSize: 12);
  TextStyle get poppinsBold18 => poppinsBold.copyWith(fontSize: 18);
  TextStyle get poppinsBold20 => poppinsBold.copyWith(fontSize: 20);
  TextStyle get poppinsBlack22 => poppinsBlack.copyWith(fontSize: 22);
  TextStyle get poppinsLight16 => poppinsLight.copyWith(fontSize: 16);
  TextStyle get poppinsThin14 => poppinsThin.copyWith(fontSize: 14);
  TextStyle get poppinsItalic18 =>
      poppinsRegular.copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get poppinsBoldUnderlined16 =>
      poppinsBold.copyWith(fontSize: 16, decoration: TextDecoration.underline);

  TextStyle get poppinsRegular12Gray =>
      poppinsRegular12.copyWith(color: Colors.grey);
  TextStyle get poppinsMedium16 =>
      baseTextStyle('Poppins', FontWeight.w500).copyWith(fontSize: 16);
  TextStyle get poppinsSemiBold20 =>
      baseTextStyle('Poppins', FontWeight.w600).copyWith(fontSize: 20);
  TextStyle get poppinsExtraBold22 =>
      baseTextStyle('Poppins', FontWeight.w800).copyWith(fontSize: 22);
  TextStyle get poppinsBoldItalic18 => baseTextStyle('Poppins', FontWeight.w700)
      .copyWith(fontSize: 18, fontStyle: FontStyle.italic);
  TextStyle get poppinsUnderlined14 =>
      poppinsRegular14.copyWith(decoration: TextDecoration.underline);

  TextStyle get headlineLarge => poppinsBold.copyWith(fontSize: 32);
  TextStyle get bodySmall => poppinsLight.copyWith(fontSize: 14);
  TextStyle get titleMedium => poppinsMedium16.copyWith(fontSize: 20);
}
