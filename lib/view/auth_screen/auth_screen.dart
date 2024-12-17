import 'package:eadukalthedi/routes/app_routes.dart';
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
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isAlreadyExist = true;

  void toggleLoginPage() {
    setState(() {
      isAlreadyExist = !isAlreadyExist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(0.1 * SizeUtils.height),
          Column(
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
              gapLarge,
              CommonButton(
                isAGradieantButton: true,
                onPressed: () async {
                  //TODO : if user doesnot exist then navigate to create_profile

                  await Navigator.pushNamed(
                      context,
                      isAlreadyExist
                          ? AppRoutes.navigationScreen
                          : AppRoutes.profileMajorScreen);
                },
                elevated: true,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.svgs.google),
                    gap,
                    Text(
                      isAlreadyExist
                          ? "Login with Google"
                          : "Continue with Google",
                      style: context.poppinsRegular16,
                    )
                  ],
                ),
              ),
              gapLarge,
              GestureDetector(
                onTap: toggleLoginPage,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isAlreadyExist
                          ? "Don't have an Account? "
                          : "Have an Account ? ",
                      style:
                          context.poppinsRegular12.copyWith(color: greyBorder),
                    ),
                    Text(
                      isAlreadyExist ? "Create one" : "Log In",
                      style:
                          context.poppinsRegular12.copyWith(color: primalColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const TermsAndConditionsWidget(),
        ],
      ),
    );
  }
}
