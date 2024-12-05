import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/theme/theme.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



//established connection to new branch
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //TODO: implement theme change
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.splashScreen,
      builder: (context, child) => Sizer(
          builder: (context, Orientation orientation, DeviceType deviceType) {
        return child ?? const SizedBox();
      }),
    );
  }
}
