import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorBlogAdd extends StatelessWidget {
  const AuthorBlogAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: SizeUtils.height * 0.05,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeUtils.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            gap,
            TextFormField(
              maxLines: 1,
              maxLength: 60,
              style: GoogleFonts.notoSerifMalayalam(),
              decoration: InputDecoration(
                hintText: "ബ്ലോഗിൻ്റെ പേര് നൽകുക",
                hintStyle: GoogleFonts.notoSerifMalayalam(),
              ),
            ),
            gap,
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    color: greenTemp,
                    child: Center(
                      child: Text(
                        "Choose Category",
                        style: context.poppinsRegular12.copyWith(
                          color: pureWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.fSize,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            gapLarge,
            Expanded(
              child: TextField(
                maxLength: 4000,
                maxLines: 50,
                style: GoogleFonts.notoSerifMalayalam(),
                decoration: InputDecoration(
                  hintText: "ബ്ലോഗ് ഉള്ളടക്കം ഇവിടെ നൽകുക",
                  hintStyle: GoogleFonts.notoSerifMalayalam(),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            gapLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CommonButton(
                    color: pureWhite,
                    borderColor: greenTemp,
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: context.poppinsRegular12.copyWith(
                          color: greenTemp,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.fSize,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                gapLarge,
                Expanded(
                  child: CommonButton(
                    color: greenTemp,
                    child: Center(
                      child: Text(
                        "Publish",
                        style: context.poppinsRegular12.copyWith(
                          color: pureWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.fSize,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            gap
          ],
        ),
      ),
    );
  }
}
