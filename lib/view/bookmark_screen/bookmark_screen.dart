import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: List.generate(
            5,
            (index) {
              return const BlogContainer();
            },
          ),
        ),
      ),
    ));
  }
}
