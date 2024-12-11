import 'package:eadukalthedi/extensions/font_extensions.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: SizeUtils.height * 0.02,
                  left: SizeUtils.height * 0.02,
                  right: SizeUtils.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Please Start Writing Better Git Commits",
                      style: context.poppinsBold
                          .copyWith(color: textBlack, fontSize: 28.fSize),
                    ),
                    SizedBox(height: SizeUtils.height * 0.02),
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
                          child: CircleAvatar(
                            backgroundImage: const NetworkImage(
                              "https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            ),
                            radius: SizeUtils.height * 0.02,
                          ),
                        ),
                        // Author's name
                        GestureDetector(
                          onTap: () {
                            // Navigate to author's profile page

                            Navigator.pushNamed(
                                context, AppRoutes.authorViewScreen);
                          },
                          child: Text(
                            "Travis Aaron Wagner",
                            style: context.poppinsRegular12
                                .copyWith(color: textBlack, fontSize: 16.fSize),
                          ),
                        ),
                        // Publication date
                        Text(
                          "Jul 29, 2022",
                          style: context.poppinsRegular12
                              .copyWith(color: mildGray, fontSize: 12.fSize),
                        ),
                        // Reading time
                        Text(
                          "4 min. read",
                          style: context.poppinsRegular12
                              .copyWith(color: mildGray, fontSize: 12.fSize),
                        ),
                      ],
                    ),
                    const Divider(), // Divider line between author details and content

                    SizedBox(height: SizeUtils.height * 0.01),

                    Text(
                      "I recently read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look \n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.\n\n understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.understanding what makes a Git commit good or bad.ou're probably thinking to yourself, my commits are just fine, thank you. But are they really? Let's take a closer look.",
                      style: context.poppinsRegular12
                          .copyWith(color: textBlack, fontSize: 20.fSize),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.05),
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
            style: context.poppinsSemiBold
                .copyWith(color: Colors.black, fontSize: 18.fSize),
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
