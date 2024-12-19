import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  // Function to get tab bar categories
  List<Widget> getCategoryTabs() {
    return const [
      Tab(text: "Tab 1"),
      Tab(text: "Tab 2"),
      Tab(text: "Tab 3"),
      Tab(text: "Tab 4"),
      Tab(text: "Tab 5"),
    ];
  }

  // Function to get tab bar pages
  List<Widget> getCategoryTabPages() {
    return [
      // blog list
      SingleChildScrollView(
        child: Column(
    
          children: List.generate(
            6,
            (index) => const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: BlogContainer(),
            ),
          ),
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
        child: Text("Content for Tab 5"),
      ),
    ];
  }
}
