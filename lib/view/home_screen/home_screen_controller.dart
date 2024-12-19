import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  // Function to get tab bar categories
  List<Widget> getCategoryTabs() {
    return const [
      Tab(text: "വിനായകാഷ്ടകം"),
      Tab(text: "മണ്ണന്തലദേവീസ്തവം"),
      Tab(text: "കാളീനാടകം"),
      Tab(text: "ജനനീ നവരത്ന മഞ്ജരി"),
      Tab(text: "ഭദ്രകാള്യഷ്ടകം"),
      Tab(text: "ദേവീപ്രണാമദേവ്യഷ്ടകം"),
    ];
  }

  // Function to get tab bar pages
  List<Widget> getCategoryTabPages() {
    return [
      // blog list
      SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              6,
              (index) => const BlogContainer(),
            ),
            gapXXL
          ],
        ),
      ),
      const Center(
        child: Text("Content for Tab 2"),
      ),
      const Center(
        child: Text("Content for Tab 3"),
      ),
      const Center(
        child: Text("Content for Tab 4"),
      ),
      const Center(
        child: Text("Content for Tab 15"),
      ),
      const Center(
        child: Text("Content for Tab 6"),
      ),
    ];
  }
}
