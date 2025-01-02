class ApiEndpoints {
  static const String baseUrl = "http://213.210.36.7/";

  // User Management
  static const String editUserProfile = "${baseUrl}api/users/profile/:email/";

  //content
  static const String viewSpecialContent =
      "${baseUrl}api/spacial-categories/latest/";
  static const String viewLikeBlog = "${baseUrl}api/blogs/:pk/view-like/";
  static const String viewAndFollow = "${baseUrl}api/blogs/follow/";
  
  // TODO: Add more endpoints
}
