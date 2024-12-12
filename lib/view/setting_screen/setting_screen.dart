import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.05,
            vertical: SizeUtils.height * 0.01),
        child: Column(
          children: [
            // image , name , location details
            // Profile Image
            CircleAvatar(
              radius: SizeUtils.height * 0.07,
              backgroundImage: NetworkImage(profileImages.first),
            ),

            gapLarge,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Location and Name
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Sri Vinkayya Nair",
                        style: context.poppinsBold20.copyWith(
                            color: Colors.black,
                            fontSize: 25.fSize,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Place: Kottayam",
                        style: context.poppinsBold20.copyWith(
                            color: Colors.black,
                            fontSize: 15.fSize,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            gapLarge,

            // edit button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  color: textBlack,
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: context.poppinsBold20.copyWith(
                          color: pureWhite,
                          fontSize: 15.fSize,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.profileEditPage);
                  },
                ),
              ],
            ),

            gap,

            // divider
            const Divider(),

            gapLarge, gapLarge,

            // support Button

            Container(
              padding: EdgeInsets.all(SizeUtils.width * 0.1),
              height: SizeUtils.height * 0.3,
              width: SizeUtils.width * 0.675,
              decoration: BoxDecoration(
                color: pureWhite,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: textBlack.withOpacity(0.1),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                Assets.svgs.supportUs,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
