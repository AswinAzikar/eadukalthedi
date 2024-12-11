import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';

import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/setting_screen/widgets/textform_widget.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeUtils.width * 0.05,
              right: SizeUtils.width * 0.05,
              top: SizeUtils.width * 0.05),
          child: Column(
            children: [
              gapLarge,
              const FormTextWidget(name: "Name", hintText: "Enter Your Name"),
              gapLarge,
              const FormTextWidget(
                  name: "Email", hintText: "info@abijithcb.com"),
              gapLarge,
             
              gapLarge, const FormTextWidget(
                  isDatePickerEnabled: true,
                  name: "Date of Birth",
                  hintText: "29/03/2003"),
              const FormTextWidget(
                  name: "Address", hintText: "ABC House Town P O City, 689622"),
              gapLarge,
              const FormTextWidget(
                  name: "Phone Number", hintText: "+91 8590377418"),
              gapLarge,
              const FormTextWidget(
                  name: "SNDP YOGAM UNION", hintText: "Mannar Union"),
              gapLarge,
              const FormTextWidget(
                  name: "SNDP YOGAM BRANCH", hintText: "SNDP YOGMA BR NO 658"),
              gapLarge,
              const FormTextWidget(name: "Pincode", hintText: "689622"),
              gapLarge,
              gapLarge,
              CommonButton(
                elevated: true,
                color: greenTemp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Save Changes",
                      style: context.poppinsRegular16
                          .copyWith(color: offwhite, fontSize: 16.fSize),
                    )
                  ],
                ),
                onPressed: () {
                  // TODO: save details Logic
                },
              ),

              gapLarge,
              gapLarge,

              // Support us

              CommonButton(
                elevated: true,
                onPressed: () {},
                color: pureWhite,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svgs.supportUs),
                      gap,
                      Text(
                        "Support Us", // Display the category name
                        style: context.poppinsBold
                            .copyWith(color: textBlack, fontSize: 18.fSize),
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                children: List.generate(
                  8,
                  (index) => gapLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
