import 'dart:async';
import 'dart:io' show HttpClient, Platform, X509Certificate;
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shrouq_app/core/constants.dart';
import 'package:shrouq_app/repository/token_repository.dart';

@Singleton()
class DioClient {
  late Dio _dio;

  DioClient() {
    _dio = Dio();
    _dio.options = BaseOptions(
      baseUrl: Platform.isAndroid ? kBasedUrl : ioskBasedUrl,
      connectTimeout: 10000,
      sendTimeout: 10000,
    );
    _dio.interceptors.add(_interceptor());
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
  Interceptor _interceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        // add locale to header from shared pref

        options.headers['Accept-Language'] =
            await SharedPreferences.getInstance()
                .then((value) => value.getString('locale') ?? 'en');
        if (kDebugMode) {
          print('path ${options.path}');
          print('method ${options.path.contains('login')}');
        }

        // set token header from shared preferences
        // check if route is login or register
        if (!options.path.contains('login') &&
            !options.path.contains('register')) {
          final token = await TokenRepository().getToken();
          options.headers['Authorization'] = 'Bearer ${token.accessToken}';
        }
        return handler.next(options);
        //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg:
        // return handler.resolve(response)
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg:
        // return handler.reject(error)
      },
    );
  }

  Dio get dio => _dio;
}
