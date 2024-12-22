import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';

import 'package:eadukalthedi/view/home_screen/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<HomeScreenController>(context);

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            titleTextStyle: context.helveticaNeueRegular12.copyWith(
                color: Colors.black,
                fontSize: 34.fSize,
                fontWeight: FontWeight.bold),
            toolbarHeight: SizeUtils.height * .08,
            title: Text(
              "Home",
              style: context.helveticaNeueBlack22
                  .copyWith(fontSize: 24.fSize, fontWeight: FontWeight.bold),
            ),
          ),
          body: DefaultTabController(
            length: providerObj.getCategoryTabs().length,
            child: Column(
              children: [
                TabBar(
                  overlayColor: WidgetStateProperty.resolveWith<Color?>(
                    (states) {
                      if (states.contains(WidgetState.pressed)) {
                        return primalColor;
                      }
                      return null;
                    },
                  ),
                  splashBorderRadius:
                      const BorderRadius.all(Radius.circular(paddingXL)),
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: primalColor,
                  tabs: providerObj.getCategoryTabs(),
                ),
                Expanded(
                  child: TabBarView(
                    children: List.generate(
                      providerObj.getCategoryTabPages().length,
                      (index) => providerObj.getCategoryTabPages()[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: paddingXL * 3 / 4,
          bottom: SizeUtils.height * .08,
          child: Container(
            width: 70.h,
            height: 70.h,
            decoration: BoxDecoration(
              boxShadow: constShadow,
              gradient: primaryGradient,
              shape: BoxShape.circle,
            ),
            child: Icon(
              size: 40.h,
              Icons.edit_square,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Row appBarSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Icon(Icons.notifications_active),
      ],
    );
  }
}
