import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/blog_page/blog_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<BlogPageController>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Please Start Writing Better Git Commits",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Author details and metadata
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Author's avatar
                        GestureDetector(
                          onTap: () {
                            // Navigate to author's profile page

                            Navigator.pushNamed(
                                context, AppRoutes.authorViewScreen);
                          },
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            ),
                            radius: 15,
                          ),
                        ),
                        // Author's name
                        GestureDetector(
                          onTap: () {
                            // Navigate to author's profile page

                            Navigator.pushNamed(
                                context, AppRoutes.authorViewScreen);
                          },
                          child: const Text(
                            "Travis Aaron Wagner",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
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

                    const SizedBox(height: 20),

                    const Text(
                      "I recently read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look \n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: pureWhite,
                  height: SizeUtils.height * 0.07,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        isSelected: providerObj.isFavoriteSelected,
                        iconColor: providerObj.isFavoriteSelected
                            ? Colors.red
                            : textBlack,
                        text: "18K",
                        icon: providerObj.isFavoriteSelected
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        onTap: () {
                          providerObj.toggleFavoriteSelection();
                        },
                      ),
                      ActionButton(
                        isSelected: providerObj.isBookmarkSelected,
                        iconColor: providerObj.isBookmarkSelected
                            ? greenTemp
                            : textBlack,
                        text: "8K",
                        icon: providerObj.isBookmarkSelected
                            ? Icons.bookmark
                            : Icons.bookmark_outline,
                        onTap: () {
                          providerObj.toggleBookmarkSelection();
                        },
                      ),
                      ActionButton(
                        text: "50K",
                        icon: Icons.remove_red_eye_outlined,
                        onTap: () {},
                      ),
                      ActionButton(
                        text: "5K",
                        icon: Icons.share_outlined,
                        onTap: () {
                          // TODO logic to share blog
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// Action Button Logic

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? iconColor;
  final VoidCallback onTap;
  final bool isSelected;

  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.iconColor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          gap, // Adjust spacing as needed
          Icon(
            icon,
            color: isSelected ? iconColor : textBlack,
          ),
        ],
      ),
    );
  }
}
