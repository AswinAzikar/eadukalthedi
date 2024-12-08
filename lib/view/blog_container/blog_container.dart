import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:flutter/material.dart';

/// A widget that displays a blog container with a title, author information,
/// date, reading time, an excerpt, and a "Read more" button.
class BlogContainer extends StatelessWidget {
  const BlogContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 362,
      padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 13.0),
      decoration: BoxDecoration(
        color: pureWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color with opacity
            spreadRadius: 1, // Spread radius of the shadow
            blurRadius: 3, // Blur radius of the shadow
            offset: const Offset(2, 3), // Offset for the shadow
          ),
        ],
      ),
      child: Column(
        children: [
          // Blog heading or title
          const Text(
            "Please Start Writing Better Git Commits",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2, // Maximum number of lines for the title
          ),

          const SizedBox(
              height: 15), // Spacing between title and author details

          // Author details and metadata
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Author's avatar
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
                radius: 12,
              ),
              // Author's name
              const Text(
                "Travis Aaron Wagner",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              // Publication date
              Text(
                "Jul 29, 2022",
                style: TextStyle(
                  fontSize: 10,
                  color: mildGray,
                  fontWeight: FontWeight.normal,
                ),
              ),
              // Reading time
              Text(
                "4 min. read",
                style: TextStyle(
                  color: mildGray,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const Divider(), // Divider line between author details and content

          // Blog excerpt content
          const Text(
            "I recently read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
            maxLines: 6, // Maximum number of lines for the excerpt
            overflow:
                TextOverflow.ellipsis, // Overflow handling to show ellipsis
          ),
          const SizedBox(height: 10), // Spacing between content and the button

          // "Read more" button
          GestureDetector(
            onTap: () {
              // Navigate to the full article when tapped
              Navigator.pushNamed(context, AppRoutes.blogPageScreen);
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: greenTemp,
                    ),
                    child: const Center(
                      child: Text(
                        "Read more",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
