import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/view/profile_screen/controller/textformfield_controllers.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';

class ProfileVitals extends StatefulWidget {
  const ProfileVitals({super.key});

  @override
  State<ProfileVitals> createState() => _ProfileVitalsState();
}

class _ProfileVitalsState extends State<ProfileVitals> {
  final _formKey = GlobalKey<FormState>();

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    } else if (value.length != 10 || !RegExp(r'^\d+$').hasMatch(value)) {
      return "Enter a valid 10-digit phone number";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight.h,
        centerTitle: true,
        title: Text(
          "Complete Your Profile",
          style: context.helveticaNeueBlack22
              .copyWith(fontSize: 20.fSize, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.svgs.progBar2,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            ),
            gapLarge,
            SizedBox(
              width: double.infinity,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: context.helveticaNeueRegular.copyWith(
                        fontSize: 20.fSize,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      decoration: InputDecoration(
                        prefixText: "+91 ",
                        alignLabelWithHint: true,
                        hintTextDirection: TextDirection.ltr,
                        hintText: "Phone number without country code",
                        hintStyle: context.helveticaNeueRegular16.copyWith(
                          fontSize: 16.fSize,
                          color: greyBorder,
                        ),
                      ),
                      validator: _validatePhoneNumber,
                      onChanged: (_) {
                        setState(() {});
                      },
                    ),
                    gapLarge,
                    Text(
                      "Address",
                      style: context.helveticaNeueRegular.copyWith(
                        fontSize: 20.fSize,
                      ),
                    ),
                    gap,
                    TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 0),
                        hintText: "Address",
                        hintStyle: context.helveticaNeueRegular16.copyWith(
                          fontSize: 16.fSize,
                          color: greyBorder,
                        ),
                      ),
                      onChanged: (_) {
                        setState(() {});
                      },
                    ),
                    gapLarge,
                    Text(
                      "Pin Code",
                      style: context.helveticaNeueRegular.copyWith(
                        fontSize: 20.fSize,
                      ),
                    ),
                    TextFormField(
                      controller: pinCodeController,
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 0),
                        hintText: "Pin Code",
                        hintStyle: context.helveticaNeueRegular16.copyWith(
                          fontSize: 16.fSize,
                          color: greyBorder,
                        ),
                      ),
                      onChanged: (_) {
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: Builder(builder: (context) {
          final bool isPhoneValid =
              _validatePhoneNumber(phoneController.text) == null;
          final bool canSubmitVitals = isPhoneValid &&
              addressController.text.isNotEmpty &&
              pinCodeController.text.isNotEmpty;

          return CommonButton(
            isActive: canSubmitVitals,
            isAGradieantButton: canSubmitVitals,
            onPressed: canSubmitVitals
                ? () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                          context, AppRoutes.profileWelcomeScreen);
                    }
                  }
                : null,
            child: Center(
              child: Text(
                "NEXT",
                style: context.helveticaNeueBold18
                    .copyWith(color: Colors.white, fontSize: 16.fSize),
              ),
            ),
          );
        }),
      ),
    );
  }
}
