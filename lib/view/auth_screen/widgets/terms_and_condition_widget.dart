import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/log_utils.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(paddingLarge.h),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: 12.h,
              color: greyBorder,
            ),
            children: [
              const TextSpan(
                  text: "By creating an account or signing you agree to our "),
              TextSpan(
                text: "Terms and Conditions",
                style: TextStyle(
                  color: greenTemp,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
//TODO : Pass the voidcallback function from the page to activate this feature
                    logesh.w("terms and Conditions Tapped.");
                  },
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy",
                style: TextStyle(
                  color: greenTemp,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //TODO : Pass the voidcallback function here too.
                    logesh.w("Privacy Policy clicked");
                  },
              ),
              const TextSpan(text: "."),
            ],
          ),
        ),
      ),
    );
  }
}
