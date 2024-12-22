import 'package:eadukalthedi/view/add_blog/add_blog_page.dart';
import 'package:eadukalthedi/view/auth_screen/auth_screen.dart';
import 'package:eadukalthedi/view/blog_page/blog_page.dart';
import 'package:eadukalthedi/view/navigation_screen/navigation_screen.dart';
import 'package:eadukalthedi/view/profile_screen/profile_major.dart';
import 'package:eadukalthedi/view/profile_screen/profile_vitals.dart';
import 'package:eadukalthedi/view/profile_screen/profile_welcome.dart';
import 'package:eadukalthedi/view/special_category_content_screen/special_category_content_screen.dart';
import 'package:eadukalthedi/view/splash_screen/splash_screen.dart';
import 'package:eadukalthedi/view/welcom_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static const String profileWelcomeScreen = "/profileWelcomeScreen";
  static const String profileVitalScreen = "/profileVitalScreen";
  static const String profileMajorScreen = "profileMajorScreen";
  static const String splashScreen = '/';
  static const String authScreen = "/AuthScreen";
  static const String welcomeScreen = "/WelcomeScreen";
  static const String blogPageScreen = "/BlogPage";
  static const String navigationScreen = "/NavScreen";
  static const String specialCategoryContentScreen =
      "/SpecialCategoryContentScreen";
  static const String addBlogPage = "/AddBlogPage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case addBlogPage:
        return PageTransition(
            child: const AddBlogPage(),
            type: PageTransitionType.bottomToTop,
            duration: Durations.medium1);
      case profileWelcomeScreen:
        return PageTransition(
            child: const ProfileWelcome(), type: PageTransitionType.fade);
      case profileVitalScreen:
        return PageTransition(
            child: const ProfileVitals(), type: PageTransitionType.fade);
      case profileMajorScreen:
        return PageTransition(
            childCurrent: const AuthScreen(),
            child: const ProfileMajor(),
            type: PageTransitionType.rightToLeftJoined);

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

      case specialCategoryContentScreen:
        return MaterialPageRoute(
            builder: (_) => const SpecialCategoryContentScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
