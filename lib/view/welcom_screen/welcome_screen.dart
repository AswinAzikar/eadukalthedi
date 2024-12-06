import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: const Text("data"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to the Library",
              style: context.poppinsSemiBold26.copyWith(color: headingText),
            ),
            Text(
              "Enter your Name for username",
              style: context.poppinsSemiBold12.copyWith(color: miniHeadingText),
            ),
            gapLarge,
            gapLarge,
            TextFormField(
              decoration: InputDecoration(
                fillColor: offwhite,
                filled: true,
                hintText: "Enter your Name",
                hintStyle: TextStyle(
                  color: miniHeadingText.withOpacity(0.5),
                  fontSize: 17,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: borderStroke,
                    width: 2,
                  ),
                ),
              ),
            ),
            gapLarge,
            gapLarge,
            gapLarge,
            gapLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: greenTemp,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: context.poppinsBold.copyWith(color: offwhite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
