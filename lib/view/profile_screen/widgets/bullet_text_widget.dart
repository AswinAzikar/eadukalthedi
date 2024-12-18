import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BulletTextWidget extends StatelessWidget {
  final String title;
  final String description;
  const BulletTextWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeUtils.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //TODO: these texts are to be fetched from the api
            children: [
              Column(
                children: [
                  gapLarge,
                  SvgPicture.asset(
                    Assets.svgs.bulletIcon,
                    height: 10.h,
                  ),
                ],
              ),
              gap,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.helveticaNeueRegular
                          .copyWith(fontSize: 20.fSize),
                    ),
                    Text(
                      description,
                      style: context.helveticaNeueRegular
                          .copyWith(fontSize: 14.fSize),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
