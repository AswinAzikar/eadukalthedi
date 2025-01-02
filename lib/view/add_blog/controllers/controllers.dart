import 'package:flutter/material.dart';

class AddBlogController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  void dispose() {
    titleController.dispose();
    contentController.dispose();
  }
}