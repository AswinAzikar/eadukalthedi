import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
          children: [
            // Header Row for the title "CATEGORIES"
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BOOKMARKS",
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
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => BlogContainer(),
                  separatorBuilder: (context, index) => gapLarge,
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
