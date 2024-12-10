import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/category_screen/category_screen_widget/category_container.dart';
import 'package:flutter/material.dart';

/// A stateless widget that represents the category screen with a list of categories.
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            // Header Row for the title "CATEGORIES"
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CATEGORIES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0, // Spacing between characters
                    fontSize: 20, // Font size
                    color:
                        textBlack.withOpacity(0.6), // Text color with opacity
                  ),
                ),
              ],
            ),
            gapLarge, // Spacing below the title

            // Main Container for special category
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 84.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                color: pureWhite, // Background color
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0, // Spread radius of the shadow
                    blurRadius: 1, // Blur radius of the shadow
                    offset: const Offset(0, 2), // Shadow offset
                    color: Colors.black
                        .withOpacity(0.2), // Shadow color with opacity
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the row content
                children: [
                  Image.asset(
                    Assets.pngs.specimen.path,
                    height: SizeUtils.width *
                        0.2, // Adjusted the image height calculation
                  ),
                  Text(
                    "SREE NARAYANA GURU",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Font size
                      color: categoryTextColor, // Text color
                    ),
                  ),
                ],
              ),
            ),
            gapLarge, // Spacing below the main container

            // Expanded ListView for category containers
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CategoryContainer(
                  categoryName:
                      "Category Name 0$index", // Dynamic category name
                ),
                separatorBuilder: (context, index) =>
                    gapLarge, // Spacing between list items
                itemCount: 20, // Total number of categories
              ),
            ),
          ],
        ),
      ),
    );
  }
}
