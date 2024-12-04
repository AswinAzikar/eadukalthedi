
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: _textTheme,
    );
  }

  static final TextTheme _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      fontSize: 32.fSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 28.fSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: 20.fSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      fontSize: 16.fSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.fSize,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
  );
}
