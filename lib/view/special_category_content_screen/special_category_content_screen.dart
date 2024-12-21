import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpecialCategoryContentScreen extends StatelessWidget {
  const SpecialCategoryContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
    );
  }
}
