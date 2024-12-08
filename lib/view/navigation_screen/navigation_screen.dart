import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eadukalthedi/view/bookmark_screen/bookmark_screen.dart';
import 'package:eadukalthedi/view/category_screen/category_screen.dart';
import 'package:eadukalthedi/view/home_screen/home_screen.dart';
import 'package:eadukalthedi/view/navigation_screen/navigation_screen_controller.dart';
import 'package:eadukalthedi/view/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    // Access the NavigationScreenController provider to manage state.
    final providerObj = Provider.of<NavigationScreenController>(context);

    return Scaffold(
      // Bottom navigation bar with curved design.
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xffFfffff), // Set the color of the navigation bar.
        backgroundColor: const Color(
            0xffEFEFEF), // Set the Backgroundcolor of the navigation bar.

        // List of icons to be displayed in the bottom navigation bar.
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(Icons.category_outlined, size: 30),
          Icon(Icons.favorite_border_outlined, size: 30),
          Icon(Icons.settings_outlined, size: 30),
        ],
        onTap: (index) {
          // Handle icon tap events to switch pages.
          providerObj.selectPage(index);
        },
      ),
      body: PageView(
        // Controller for the PageView to manage page navigation.
        controller: providerObj.pageController,

        // List of screens corresponding to each icon in the bottom navigation bar.
        children: const [
          HomeScreen(),
          CategoryScreen(),
          BookMarkScreen(),
          SettingScreen(),
        ],
        // Handle page change events to update the selected index.
        onPageChanged: (value) {
          // OnClicking on the index the Page changes as per Index value
          providerObj.selectPage(value);
        },
      ),
    );
  }
}
