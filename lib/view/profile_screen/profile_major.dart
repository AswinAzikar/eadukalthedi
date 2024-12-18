import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/gen/assets.gen.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';

class ProfileMajor extends StatefulWidget {
  const ProfileMajor({super.key});

  @override
  State<ProfileMajor> createState() => _ProfileMajorState();
}

class _ProfileMajorState extends State<ProfileMajor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        centerTitle: true,
        title: Text(
          "Complete Your Profile",
          style: context.helveticaNeueBlack22
              .copyWith(fontSize: 20.fSize, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                      style: context.helveticaNeueBlack
                          .copyWith(fontSize: 20.fSize),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Full Name",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
