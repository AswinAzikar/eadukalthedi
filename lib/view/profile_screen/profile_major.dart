import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/log_utils.dart';
import 'package:eadukalthedi/view/profile_screen/controller/textformfield_controllers.dart';
import 'package:eadukalthedi/view/profile_screen/profile_vitals.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:logger/logger.dart';

class ProfileMajor extends StatefulWidget {
  const ProfileMajor({super.key});

  @override
  State<ProfileMajor> createState() => _ProfileMajorState();
}

class _ProfileMajorState extends State<ProfileMajor> {
  @override
  void dispose() {
    // nameController.dispose();
    // dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && mounted) {
      setState(() {
        dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
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
                  Assets.svgs.progBar1,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            ),
            gapLarge,
            SizedBox(
              width: double.infinity,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Name",
                      style: context.helveticaNeueRegular.copyWith(
                        fontSize: 20.fSize,
                      ),
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        hintStyle: context.helveticaNeueRegular16.copyWith(
                          fontSize: 16.fSize,
                          color: greyBorder,
                        ),
                      ),
                    ),
                    gapLarge,
                    Text(
                      "Date of Birth",
                      style: context.helveticaNeueRegular.copyWith(
                        fontSize: 20.fSize,
                      ),
                    ),
                    gap,
                    TextFormField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 0),
                        hintText: "Select Date",
                        hintStyle: context.helveticaNeueRegular16.copyWith(
                          fontSize: 16.fSize,
                          color: greyBorder,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(bottom: paddingLarge.h),
                          child: const Icon(
                            Icons.calendar_today,
                          ),
                        ),
                      ),
                      onTap: () => _selectDate(context),
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
          final bool canSubmit =
              nameController.text.isNotEmpty && dateController.text.isNotEmpty;
          return CommonButton(
            isActive: canSubmit,
            isAGradieantButton: canSubmit,
            onPressed: canSubmit
                ? () {
                    Navigator.pushNamed(context, AppRoutes.profileVitalScreen);
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
