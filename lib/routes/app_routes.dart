import 'package:eadukalthedi/view/auth_screen/auth_screen.dart';
import 'package:eadukalthedi/view/welcom_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../view/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String authScreen = "/AuthScreen";
  static const String welcomeScreen = "/WelcomeScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
