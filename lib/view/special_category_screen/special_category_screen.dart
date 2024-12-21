import 'package:eadukalthedi/database/special_category_data.dart';
import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SpecialCategoryScreen extends StatelessWidget {
  const SpecialCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.04),
          child: Column(
            spacing: SizeUtils.height * 0.02,
            children: List.generate(
              SpecialCategoryData.specialCategoryTitle.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.specialCategoryContentScreen);
                  },
                  child: Container(
                    height: SizeUtils.height * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: pureWhite,
                      boxShadow: [
                        BoxShadow(
                          color: textGreyLight.withValues(alpha: 0.2),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: const Offset(0, 1.5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        SpecialCategoryData.specialCategoryTitle[index],
                        style: context.helveticaNeueBold.copyWith(
                          fontSize: 20,
                          color: textGreyLight.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}




//  Container(
//               height: SizeUtils.height * 0.08,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: pureWhite,
//                 boxShadow: [
//                   BoxShadow(
//                     color: textGreyLight.withValues(alpha: 0.2),
//                     spreadRadius: 0,
//                     blurRadius: 3,
//                     offset: const Offset(0, 1.5),
//                   ),
//                 ],
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Center(
//                 child: Text(
//                   SpecialCategoryData.specialCategoryTitle[0],
//                   style: context.helveticaNeueBold.copyWith(
//                     fontSize: 20,
//                     color: textGreyLight.withValues(alpha: 0.6),
//                   ),
//                 ),
//               ),
//             ),