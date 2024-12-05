import 'package:eadukalthedi/view/auth_screen/auth_screen.dart';
import 'package:flutter/material.dart';

import '../view/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';


  static const String authScreen ="/AuthScreen";



  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());




    

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
