import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Search Screen"),
      ),
    );
  }
}

// search and sort
Row searchAndSort() {
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: pureWhite,
            filled: true,
            hintText: "Search here",
            suffixIcon: Icon(
              Icons.search,
              size: 0.07 * SizeUtils.width,
              color: mildGray,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(padding),
            ),
          ),
        ),
      ),
      gap,
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(padding),
          color: pureWhite,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sort),
        ),
      ),
    ],
  );
}
