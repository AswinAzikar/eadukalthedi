import 'package:flutter/material.dart';

/// Controller class for managing the state of blog page actions, such as
/// liking and bookmarking posts. This class uses ChangeNotifier for state
/// management and notifying listeners about state changes.
class BlogPageController with ChangeNotifier {
  bool isFavoriteSelected = false; // Track the favorite selection status
  bool isBookmarkSelected = false; // Track the bookmark selection status

  /// Toggle the favorite selection status and notify listeners
  void toggleFavoriteSelection() {
    isFavoriteSelected = !isFavoriteSelected;
    notifyListeners();
  }

  /// Toggle the bookmark selection status and notify listeners
  void toggleBookmarkSelection() {
    isBookmarkSelected = !isBookmarkSelected;
    notifyListeners();
  }
}
