import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';

import 'package:eadukalthedi/view/home_screen/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The HomeScreen widget is a stateless widget that displays the home screen of the application.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the HomeScreenController provider to manage state.
    final providerObj = Provider.of<HomeScreenController>(context);

    return Scaffold(
      body: DefaultTabController(
        length: 5, // Number of tabs
        child: Padding(
          padding: const EdgeInsets.only(
              left: paddingLarge, right: paddingLarge, top: paddingLarge),
          child: Column(
            children: [
              // Placeholder for the app bar section
              // appBarSection(),

              SizedBox(
                  height: .02 *
                      SizeUtils
                          .height), // Spacing between app bar and search section

              // Search and Sort section
              searchAndSort(),

              SizedBox(
                  height: .02 *
                      SizeUtils
                          .height), // Spacing between search section and tab bar

              // Tab bar for category selection
              TabBar(
                overlayColor: WidgetStateProperty.resolveWith<Color?>(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return greenTemp.withOpacity(.06);
                    }
                    return null;
                  },
                ),
                splashBorderRadius:
                    const BorderRadius.all(Radius.circular(paddingXL)),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: Colors.black, // Color for selected tab label
                unselectedLabelColor:
                    Colors.grey, // Color for unselected tab labels
                indicatorColor: greenTemp, // Color for the indicator
                tabs: providerObj.getCategoryTabs(),
              ),

              // TabBarView to display the content of each tab
              Expanded(
                child: TabBarView(
                  children: List.generate(
                    5,
                    (index) => providerObj.getCategoryTabPages()[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget for the search and sort section
  Row searchAndSort() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: pureWhite, // Background color
              filled: true, // Whether the field is filled
              hintText: "Search here", // Placeholder text
              suffixIcon: Icon(
                Icons.search,
                size: 0.07 * SizeUtils.width,
                color: mildGray,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(padding),
              ),
            ),
          ),
        ),
        gap, // Spacing between search field and sort button
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(padding),
            color: pureWhite,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ),
      ],
    );
  }

  /// Widget for the app bar section
  Row appBarSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu), // Menu icon
        Icon(Icons.notifications_active), // Notifications icon
      ],
    );
  }
}
