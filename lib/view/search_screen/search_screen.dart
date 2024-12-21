import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.03),
        child: Column(
          children: [

            // search bar
            TextFormField(
              decoration: InputDecoration(
                fillColor: const Color(0xffF6F7F8),
                filled: true,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: textGreyLight.withValues(alpha: 0.3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: textGreyLight.withValues(alpha: 0.1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: textGreyLight.withValues(alpha: 0.1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
