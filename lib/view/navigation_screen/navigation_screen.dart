import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/bookmark_screen/bookmark_screen.dart';
import 'package:eadukalthedi/view/category_screen/category_screen.dart';
import 'package:eadukalthedi/view/home_screen/home_screen.dart';
import 'package:eadukalthedi/view/navigation_screen/navigation_screen_controller.dart';

import 'package:eadukalthedi/view/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<NavigationScreenController>(context);

    return Scaffold(
      extendBody: true,
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: greenTemp,
        color: navBarColor,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30.h,
            color: providerObj.selectedIndex == 0 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.category_outlined,
            size: 30.h,
            color: providerObj.selectedIndex == 1 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.bookmark_outline,
            size: 30.h,
            color: providerObj.selectedIndex == 2 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.settings_outlined,
            size: 30.h,
            color: providerObj.selectedIndex == 3 ? Colors.white : Colors.black,
          ),
        ],
        onTap: (index) {
          providerObj.selectPage(index);
        },
      ),
      body: PageView(
        controller: providerObj.pageController,
        // ignore: prefer_const_literals_to_create_immutables
        children: const [
          HomeScreen(),
          CategoryScreen(),
          BookMarkScreen(),
          SettingScreen(),
        ],
        onPageChanged: (value) {
          providerObj.selectPage(value);
        },
      ),
    );
  }
}
