import 'package:flutter/material.dart';

/// Controller class for managing the state of the author's view screen.
/// This class extends ChangeNotifier to provide state management and notify
/// listeners about state changes.
class AuthorViewScreenController with ChangeNotifier {
  // Indicates whether the follow button is selected
  bool isFollowButtonSelected = false;

  /// Toggles the follow button selection status and notifies listeners
  void toggleFollowButtonSelection() {
    isFollowButtonSelected = !isFollowButtonSelected;
    notifyListeners();
  }
}
