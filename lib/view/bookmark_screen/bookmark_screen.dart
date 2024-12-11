import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.height * 0.02,
            vertical: SizeUtils.height * 0.02),
        child: Column(
          children: [
            // Header Row for the title "CATEGORIES"
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BOOKMARKS",

                  style: context.poppinsBold20
                      .copyWith(color: greyBorder, fontSize: 20.fSize),
                  // style: TextStyle(
                  //   fontWeight: FontWeight.bold,
                  //   letterSpacing: 3.0, // Spacing between characters
                  //   fontSize: 20, // Font size
                  //   color:
                  //       textBlack.withOpacity(0.6), // Text color with opacity
                  // ),
                ),
              ],
            ),
            gapLarge, // Spacing below the title
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => const BlogContainer(),
                  separatorBuilder: (context, index) => gapLarge,
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
