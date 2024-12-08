import 'package:flutter/material.dart';

// This class handles the navigation logic for a screen using ChangeNotifier for state management.
class NavigationScreenController with ChangeNotifier {
  // Stores the current selected index of the bottom navigation bar.
  int selectedIndex = 0;

  // PageController to manage and control the pages in the PageView.
  PageController pageController = PageController();

  // Method to update the selected page based on the index provided.
  // This method updates the selectedIndex and jumps to the corresponding page.
  // It also notifies listeners about the state change.
  void selectPage(int index) {
    selectedIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
    
  }
}
