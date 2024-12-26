import 'package:dio/dio.dart';
import 'package:eadukalthedi/api/slugs.dart';
import 'package:eadukalthedi/models/blog_model.dart';
import 'package:eadukalthedi/utils/constants.dart'; // Import the Blog model

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  // Fetch latest special blogs
  Future<List<Blog>> fetchLatestSpecialBlogs() async {
    try {
      final response = await dio.get(ApiEndpoints.viewSpecialContent);

      if (response.statusCode == 200) {
      



      
        var blogsJson = response.data['blogs'] as List;
        return blogsJson.map((blogJson) => Blog.fromJson(blogJson)).toList();
      } else {
        throw Exception("Failed to load blogs");
      }
    } on DioException catch (e) {
      logan.e("Error fetching latest blogs: ${e.response?.data ?? e.message}");
      rethrow;
    }
  }

  // Like a blog
  Future<dynamic> likeBlog(int blogId, String userEmail) async {
    final endpoint =
        constructEndpoint(ApiEndpoints.viewLikeBlog, {'pk': blogId.toString()});
    final requestBody = {"user_email": userEmail};

    try {
      final response = await dio.post(endpoint, data: requestBody);
      return response.data;
    } on DioException catch (e) {
      logan.e("Error liking blog: ${e.response?.data ?? e.message}");
      rethrow;
    }
  }

  // Follow a blog
  Future<dynamic> followBlog(String userEmail, String blogTitle) async {
    final requestBody = {"user_email": userEmail, "blog_title": blogTitle};

    try {
      final response =
          await dio.post(ApiEndpoints.viewAndFollow, data: requestBody);
      return response.data;
    } on DioException catch (e) {
      logan.e("Error following blog: ${e.response?.data ?? e.message}");
      rethrow;
    }
  }

  // Construct endpoint by replacing placeholders with actual values
  String constructEndpoint(String endpoint, Map<String, String> slugs) {
    String finalEndpoint = endpoint;
    slugs.forEach((key, value) {
      finalEndpoint = finalEndpoint.replaceAll(':$key', value);
    });
    return finalEndpoint;
  }
}
