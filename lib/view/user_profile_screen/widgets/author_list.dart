import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AuthorList extends StatelessWidget {
  const AuthorList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeUtils.height * 0.04),
      child: ListView.separated(
          itemBuilder: (context, index) => Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // profile
                      CircleAvatar(
                        radius: SizeUtils.width * 0.05,
                      ),
                      gapLarge,
                      Text(
                        "Sitaraman R",
                        style: context.helveticaNeueRegular12
                            .copyWith(fontSize: 18.fSize),
                      ),
                    ],
                  ),
                  Container(
                    width: SizeUtils.width * 0.2,
                    height: SizeUtils.height * 0.05,
                    decoration: BoxDecoration(
                      color: primalColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: context.helveticaNeueRegular12
                            .copyWith(
                                fontSize: 16.fSize,
                                color: pureWhite),
                      ),
                    ),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: SizeUtils.height * 0.05,
              ),
          itemCount: 15),
    );
  }
}