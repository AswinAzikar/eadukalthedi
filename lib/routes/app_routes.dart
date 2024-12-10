import 'package:eadukalthedi/view/auth_screen/auth_screen.dart';
import 'package:eadukalthedi/view/author_view_screen/author_view_screen.dart';
import 'package:eadukalthedi/view/blog_page/blog_page.dart';
import 'package:eadukalthedi/view/navigation_screen/navigation_screen.dart';
import 'package:eadukalthedi/view/splash_screen/splash_screen.dart';
import 'package:eadukalthedi/view/welcom_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String authScreen = "/AuthScreen";
  static const String welcomeScreen = "/WelcomeScreen";
  static const String blogPageScreen = "/BlogPage";
  static const String navigationScreen = "/NavScreen";
  static const String authorViewScreen = "/AuthorViewScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case navigationScreen:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());

      case blogPageScreen:
        return MaterialPageRoute(builder: (_) => const BlogPage());

      case authorViewScreen:
        return MaterialPageRoute(builder: (_) => const AuthorViewScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
