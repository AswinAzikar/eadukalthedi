import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/bookmark_screen/bookmark_screen.dart';
import 'package:eadukalthedi/view/special_category_screen/special_category_screen.dart';
import 'package:eadukalthedi/view/home_screen/home_screen.dart';
import 'package:eadukalthedi/view/navigation_screen/navigation_screen_controller.dart';
import 'package:eadukalthedi/view/search_screen/search_screen.dart';
import 'package:eadukalthedi/view/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 1.fSize,
        enableFeedback: false,
        backgroundColor: Colors.white,
        fixedColor: primalColor,
        type: BottomNavigationBarType.fixed,
        iconSize: 30.h,
        elevation: 20.h,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: padding.h),
              child: const Icon(LucideIcons.house),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: padding.h),
              child: const Icon(LucideIcons.search),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: padding.h),
              child: const Icon(LucideIcons.boxes),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: padding.h),
              child: const Icon(LucideIcons.bookmark),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: padding.h),
              child: const Icon(LucideIcons.userRound),
            ),
            label: '',
          ),
        ],
        currentIndex: providerObj.selectedIndex,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          providerObj.selectPage(value);
        },
      ),
      body: PageView(
        controller: providerObj.pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          SpecialCategoryScreen(),
          BookMarkScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (value) {
          providerObj.selectPage(value);
        },
      ),
    );
  }
}
