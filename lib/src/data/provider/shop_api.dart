import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';

const BASE_URL = 'https://jsonplaceholder.typicode.com/posts/';

class ShopApiClient {
  Dio _dio;

  Dio get httpClient => _dio;

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          print(error.message);
          return handler.next(error);
        },
        onRequest: (request, handler) {
          print('${request.method} | ${request.path}');
          return handler.next(request);
        },
        onResponse: (response, handler) {
          print(
              '${response.statusCode} ${response.statusMessage} ${response.data}');
          return handler.next(response);
        },
      ),
    );
  }

  void init() {
    //final token = Get.find<AuthController>().token;
    final token = '';
    _dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        headers: {if (!token.isEmpty) "Authorization": "Bearer $token"},
      ),
    );

    initializeInterceptors();
  }
}
