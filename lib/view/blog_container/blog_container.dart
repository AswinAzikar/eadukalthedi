import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class BlogContainer extends StatelessWidget {
  const BlogContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 13.h),
      decoration: BoxDecoration(
        color: pureWhite,
        borderRadius: BorderRadius.circular(paddingLarge),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Please Start Writing Better Git Commits",
            maxLines: 2,
            style: context.helveticaNeueBold20
                .copyWith(color: Colors.black, fontSize: 20.fSize),
          ),
          gapLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileImages.first),
                radius: paddingLarge.h,
              ),
              Text(
                "Travis Aaron Wagner",
                style: context.helveticaNeueRegular12
                    .copyWith(fontSize: 12.fSize, color: mildGray),
                // style: TextStyle(
                //   fontSize: 12,
                //   fontWeight: FontWeight.normal,
                // ),
              ),
              Text(
                "Jul 29, 2022",

                style: context.helveticaNeueRegular12
                    .copyWith(color: mildGray, fontSize: 10.fSize),
                // style: TextStyle(
                //   fontSize: 10,
                //   color: mildGray,
                //   fontWeight: FontWeight.normal,
                // ),
              ),
              Text(
                "4 min. read",

                style: context.helveticaNeueRegular12
                    .copyWith(color: mildGray, fontSize: 12.fSize),
                // style: TextStyle(
                //   color: mildGray,
                //   fontSize: 11,
                //   fontWeight: FontWeight.normal,
                // ),
              ),
            ],
          ),
          const Divider(),
          const Text(
            "I recently read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
          gap,
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.blogPageScreen);
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: padding.h, vertical: padding.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(padding),
                        gradient: primaryGradient),
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
