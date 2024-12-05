// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/view/auth_screen/auth_screen_controller.dart';
import 'package:eadukalthedi/view/auth_screen/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../widgets/common_buton.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<AuthScreenController>(context);
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
                gapLarge,
                CommonButton(
                  onPressed: () async {
                    //TODO in Future implement two navigators logic based on login and create account

                    // first checks if is have an account or not then
                    await Navigator.pushNamed(context, AppRoutes.welcomeScreen);
                  },
                  elevated: true,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svgs.google),
                      gap,

                      // check if login or not
                      providerObj.isLogin
                          ? Text(
                              "Login with Google",
                              style: context.poppinsRegular16,
                            )
                          : Text(
                              "Continue with Google",
                              style: context.poppinsRegular16,
                            )
                    ],
                  ),
                ),
                gap,
                gap,
                GestureDetector(
                  onTap: () {
                    // logic to change to login page and create account page

                    providerObj.isLoginPage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        providerObj.isLogin
                            ? "Don't have an Account? "
                            : "Have an Account ? ",
                        style: context.poppinsRegular12
                            .copyWith(color: greyBorder),
                      ),
                      Text(
                        providerObj.isLogin ? "Create one" : "Log In",
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
