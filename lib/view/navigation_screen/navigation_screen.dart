import 'package:animated_botton_navigation/animated_botton_navigation.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
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
import 'package:flutter_svg/flutter_svg.dart';
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
      bottomNavigationBar: AnimatedBottomNavigation(
        bottonNavigationDecoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        iconSize: 30.h,
        height: 60.h,
        icons: const [
          LucideIcons.house,
          LucideIcons.search,
          LucideIcons.boxes,
          LucideIcons.bookmark,
          LucideIcons.userRound,
        ],
        currentIndex: providerObj.selectedIndex,
        onTapChange: (p0) {
          providerObj.selectPage(p0);
        },
        selectedColor: primalColor,
      ),

      // providerObj.selectPage(index);
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
