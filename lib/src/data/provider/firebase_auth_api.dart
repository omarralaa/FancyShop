import 'package:dio/dio.dart';

const BASE_URL = 'https://identitytoolkit.googleapis.com/v1/accounts';

class FirebaseAuthApiClient {
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
    _dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        queryParameters: {'key': 'AIzaSyBiOo661_rCT1CcPgsMARZLFxG5n3Ib-2Q'},
      ),
    );

    initializeInterceptors();
  }
}
