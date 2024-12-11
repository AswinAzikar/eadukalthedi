import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';

import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';

import 'package:eadukalthedi/view/category_screen/category_screen_widget/category_container.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingLarge.h, vertical: padding.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CATEGORIES",
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     letterSpacing: 3.0,
                  //     fontSize: 20,
                  //     color:
                  //         textBlack.withOpacity(0.6),
                  //   ),

                  style: context.poppinsBold20
                      .copyWith(fontSize: 20.fSize, color: greyBorder),
                ),
              ],
            ),
            gapLarge,
            Container(
              padding: EdgeInsets.symmetric(horizontal: padding.h),
              height: SizeUtils.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(padding.h),
                color: pureWhite,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: const Offset(0, 2),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.pngs.specimen.path,
                    height: SizeUtils.width * 0.2,
                  ),
                  Text(
                    "SREE NARAYANA GURU",
                    style: context.poppinsRegular16
                        .copyWith(color: categoryTextColor, fontSize: 24.fSize),
                  ),
                ],
              ),
            ),
            gapLarge,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CategoryContainer(
                  categoryName: "Category Name $index",
                ),
                separatorBuilder: (context, index) => gapLarge,
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
