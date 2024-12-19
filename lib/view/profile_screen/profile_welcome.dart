import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/profile_screen/controller/textformfield_controllers.dart';
import 'package:eadukalthedi/view/profile_screen/widgets/bullet_text_widget.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';

class ProfileWelcome extends StatelessWidget {
  const ProfileWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Namaskaram, ",
              style: context.helveticaNeueBold20.copyWith(fontSize: 20.fSize),
            ),
            Text(
              nameController.text,
              style: context.helveticaNeueRegular.copyWith(fontSize: 20.fSize),
            ),
          ],
        ),
        toolbarHeight: kToolbarHeight.h,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingLarge),
        child: SingleChildScrollView(
          child: Column(children: [
            gapLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.svgs.progBar3,
                )
              ],
            ),
            gapLarge,
            const BulletTextWidget(
              title: "Welcome to Eadukalthedi",
              description: loremIpsum,
            )
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: CommonButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.navigationScreen,
                (route) => false,
              );
            },
            isAGradieantButton: true,
            child: Center(
              child: Text(
                "CONTINUE",
                style: context.helveticaNeueBold
                    .copyWith(color: Colors.white, fontSize: 20.fSize),
              ),
            )),
      ),
    );
  }
}
