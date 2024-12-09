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

    return Scaffold(
      body: DefaultTabController(
        length: 5, 
        child: Padding(
          padding: const EdgeInsets.only(
              left: paddingLarge, right: paddingLarge, top: paddingLarge),
          child: Column(
            children: [
              
              

              SizedBox(
                  height: .02 *
                      SizeUtils
                          .height), 

              
              searchAndSort(),

              SizedBox(
                  height: .02 *
                      SizeUtils
                          .height), 

              
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
                unselectedLabelColor:
                    Colors.grey, 
                indicatorColor: greenTemp, 
                tabs: providerObj.getCategoryTabs(),
              ),

              
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
