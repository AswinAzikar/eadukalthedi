import 'package:dio/dio.dart';
import 'package:eadukalthedi/api/slugs.dart';
import 'package:eadukalthedi/utils/constants.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<dynamic> fetchSpecialContent() async {
    try {
      final response = await dio.get(ApiEndpoints.viewSpecialContent);
      return response.data;
    } on DioException catch (e) {
      logan.e(
          "Error fetching special content: ${e.response?.data ?? e.message}");
      rethrow;
    }
  }

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
}

String constructEndpoint(String endpoint, Map<String, String> slugs) {
  String finalEndpoint = endpoint;
  slugs.forEach((key, value) {
    finalEndpoint = finalEndpoint.replaceAll(':$key', value);
  });
  return finalEndpoint;
}
