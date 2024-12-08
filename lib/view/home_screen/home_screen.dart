import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: DefaultTabController(
        length: 5,
        child: Padding(
          padding: const EdgeInsets.only(
              left: paddingLarge, right: paddingLarge, top: paddingLarge),
          child: Column(
            children: [
              //    appBarSection(),
              SizedBox(height: .02 * SizeUtils.height),
              searchAndSort(),
              SizedBox(height: .02 * SizeUtils.height),
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
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: greenTemp,
                tabs: const [
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
    );
  }

  Row searchAndSort() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: pureWhite,
              filled: true,
              hintText: "Search here",
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
        gap,
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
