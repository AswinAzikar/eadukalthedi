import 'package:eadukalthedi/database/special_category_data.dart';
import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpecialCategoryContentScreen extends StatelessWidget {
  const SpecialCategoryContentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      SpecialCategoryData.specialCategoryContent[0]["title"],
                      style: context.helveticaNeueBold
                          .copyWith(fontSize: 30.fSize, color: textBlack),
                    ),
                    SizedBox(height: SizeUtils.height * 0.03),
                    Text(
                      SpecialCategoryData.specialCategoryContent[0]["content"],
                      style: context.helveticaNeueRegular
                          .copyWith(fontSize: 20.fSize, color: textGreyLight),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
