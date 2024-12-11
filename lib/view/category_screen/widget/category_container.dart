import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;

  const CategoryContainer({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: SizeUtils.height * 0.08),
      height: SizeUtils.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: pureWhite,
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 1,
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Center(
        child: Text(
          categoryName,
          style: context.poppinsRegular
              .copyWith(color: categoryTextColor, fontSize: 22.fSize),
        ),
      ),
    );
  }
}
