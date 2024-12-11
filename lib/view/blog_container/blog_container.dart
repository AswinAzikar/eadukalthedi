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
            style: context.poppinsBold20
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
                style: context.poppinsRegular
                    .copyWith(fontSize: 12.fSize, color: mildGray),
              ),
              Text(
                "Jul 29, 2022",
                style: context.poppinsRegular
                    .copyWith(color: mildGray, fontSize: 10.fSize),
              ),
              Text(
                "4 min. read",
                style: context.poppinsRegular
                    .copyWith(color: mildGray, fontSize: 12.fSize),
              ),
            ],
          ),
          const Divider(),
          Text(
            "I recently read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit read a helpful article on Hashnode by Simon Egersand titled Write Git Commit Messages Your Colleagues Will Love, and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad",
            style: context.poppinsRegular
                .copyWith(color: textBlack, fontSize: 15.fSize),
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
                    height: SizeUtils.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: greenTemp,
                    ),
                    child: Center(
                      child: Text(
                        "Read more",
                        style: context.poppinsRegular
                            .copyWith(color: pureWhite, fontSize: 15.fSize),
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
