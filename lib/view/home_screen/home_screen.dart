import 'package:eadukalthedi/utils/constants.dart';
import 'package:flutter/material.dart';

// StatelessWidget representing the HomeScreen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Set the background color for the Scaffold.

        body: DefaultTabController(
          length: 5,
          child: Padding(
            // Apply padding around the body content.
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Column(
              children: [
                // AppBar section with Menu button and Notification button.
                appBarSection(),

                const SizedBox(
                    height: 20), // Spacing between AppBar and search section.

                // Search and Sort , filter section
                searchAndSort(),

                // List of Categories or Tabs Section
                const TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(text: "Tab 1"),
                    Tab(text: "Tab 2"),
                    Tab(text: "Tab 3"),
                    Tab(text: "Tab 4"),
                    Tab(text: "Tab 5"),
                  ],
                ),

                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text("Content for Tab 1"),
                      ),
                      Center(
                        child: Text("Content for Tab 2"),
                      ),
                      Center(
                        child: Text("Content for Tab 3"),
                      ),
                      Center(
                        child: Text("Content for Tab 4"),
                      ),
                      Center(
                        child: Text("Content for Tab 5"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Home Screen Methods

  Row searchAndSort() {
    return Row(
      children: [
        // Search section with a TextFormField.
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              // Background color for the search field.
              fillColor: pureWhite,
              filled: true,
              // Placeholder text for the search field.
              hintText: "Search here",
              // Icon at the end of the search field.
              suffixIcon: const Icon(
                Icons.search,
                size: 28,
                color: Color(0xffC8C8C8),
              ),
              // Border style for the search field.
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),

        const SizedBox(
            width: 10), // Spacing between search field and sort button.

        // Filter and sort section with an IconButton.
        Container(
          decoration: BoxDecoration(
            // Rounded corners for the container.
            borderRadius: BorderRadius.circular(8),
            color: pureWhite, // Background color for the container.
          ),
          child: IconButton(
            onPressed: () {}, // Action to be performed on pressing the button.
            icon: const Icon(Icons.sort), // Sort icon.
          ),
        ),
      ],
    );
  }

  Row appBarSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Menu button icon.
        Icon(Icons.menu),
        // Notification button icon.
        Icon(Icons.notifications_active),
      ],
    );
  }
}
