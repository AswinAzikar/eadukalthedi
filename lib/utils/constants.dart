import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';

delayed({Duration duration = const Duration(seconds: 2)}) async {
  return await Future.delayed(duration);
}

const double padding = 8;
const double paddingLarge = 16;
const double paddingXL = 32;
const double paddingXXL = 64;
const double paddingSmall = 4;
const double paddingTiny = 2;

final gap = Gap(padding.h);
final gapLarge = Gap(paddingLarge.h);
final gapXL = Gap(paddingXL.h);
final gapXXL = Gap(paddingXXL.h);
final gapSmall = Gap(paddingSmall.h);
final gapTiny = Gap(paddingTiny.h);

Color greenTemp = const Color(0xff379777);
Color offwhite = const Color(0xffF5F7F8);
Color pureWhite = const Color(0xffFFFFFF);
Color headingText = const Color(0xff000000);
Color miniHeadingText = const Color(0xffA3A5A7);
const Color greyBorder = Color(0xFFA3A5A7);
Color contentOffWhite = const Color(0xffEFEFEF);
Color navBarColor = const Color(0xffFfffff);
Color mildGray = const Color(0xffC8C8C8);


// colors of the border
Color borderStroke = const Color(0xffCCC9C9);

// const Color primaryColor = Color(0xff9D696A);

const Color primaryColor = Color(0xff6b45bc);

const Duration animationDuration = Duration(milliseconds: 300);
const Duration animationDurationLarge = Duration(seconds: 1);

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

List <String> profileImages = [
  "https://images.unsplash.com/photo-1712847331947-9460dd2f264b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1580489944761-15a19d654956?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0fGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBvcnRyYWl0fGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBvcnRyYWl0fGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBvcnRyYWl0fGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBvcnRyYWl0fGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1554151228-14d9def656e4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBvcnRyYWl0fGVufDB8fDB8fHww",
];
const dummyProfile =
    "https://t3.ftcdn.net/jpg/05/16/27/58/240_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg";

String get randomProfileImage {
  List newList = List.from(profileImages);
  newList.shuffle();
  return newList.first;
}

Logger logan = Logger();
