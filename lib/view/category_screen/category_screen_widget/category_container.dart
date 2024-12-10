import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

/// A stateless widget that represents a category container with a name.
class CategoryContainer extends StatelessWidget {
  // Name of the category to be displayed in the container
  final String categoryName;

  /// Constructor for the CategoryContainer widget.
  /// [categoryName] is required and represents the name of the category.
  const CategoryContainer({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0), // Horizontal padding inside the container
      height: SizeUtils.height * 0.08, // Height of the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
        color: pureWhite, // Background color
        boxShadow: [
          BoxShadow(
            spreadRadius: 0, // Spread radius of the shadow
            blurRadius: 1, // Blur radius of the shadow
            offset: const Offset(0, 2), // Offset for the shadow
            color: Colors.black.withOpacity(0.1), // Shadow color with opacity
          ),
        ],
      ),
      child: Center(
        child: Text(
          categoryName, // Display the category name
          style: TextStyle(
            fontWeight: FontWeight.w500, // Text weight
            fontSize: 18, // Font size
            color: categoryTextColor, // Text color
          ),
        ),
      ),
    );
  }
}
