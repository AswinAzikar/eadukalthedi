// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eadukalthedi/view/auth_screen/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:gap/gap.dart';

import '../../widgets/common_buton.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(.1 * SizeUtils.height),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.pngs.specimen.path,
                  width: SizeUtils.width / 1.3,
                ),
                Hero(
                  tag: 'logo',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.pngs.logo.path,
                        width: SizeUtils.width / 1.5,
                      ),
                    ],
                  ),
                ),
                gap,
                Text(
                  "Create an Account",
                  style: context.poppinsSemiBold20,
                ),
                gapLarge,
                CommonButton(
                  onPressed: () {},
                  elevated: true,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svgs.google),
                      gap,
                      Text(
                        "Continue with Google",
                        style: context.poppinsRegular16,
                      )
                    ],
                  ),
                ),
                gap,
                GestureDetector(
                  onTap: () {
                    //TODO : implement the login/Singup logic
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an Account ?",
                        style: context.poppinsRegular12
                            .copyWith(color: greyBorder),
                      ),
                      gap,
                      Text(
                        "Log In",
                        style:
                            context.poppinsRegular12.copyWith(color: greenTemp),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          const TermsAndConditionsWidget()
        ],
      ),
    );
  }
}
