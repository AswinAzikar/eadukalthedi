import 'package:eadukalthedi/extensions/font_extensions.dart';

import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';

import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to the Library",
                    style: context.poppinsSemiBold26
                        .copyWith(color: headingText, fontSize: 26.fSize),
                  ),
                  Text(
                    "Enter your Name for username",
                    style: context.poppinsSemiBold12
                        .copyWith(color: miniHeadingText, fontSize: 16.fSize),
                  ),
                  gapXL,
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter your Name",
                    ),
                  ),
                  gapLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonButton(
                        color: primalColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: context.poppinsRegular16.copyWith(
                                  color: offwhite, fontSize: 16.fSize),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRoutes.navigationScreen);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
