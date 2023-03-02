import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:shrouq_app/model/user/user.dart';
import 'package:shrouq_app/model/user_notifications/user_notifications.dart';
import '../core/di.dart';
import '../model/token/token.dart';
import 'auth_impl.dart';

import '../model/auth/auth_exception.dart';
import 'dio_client.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepository implements AuthImpl {
  DioClient client = inject<DioClient>();

  final _controller = StreamController<AuthenticationStatus>();
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  // dio
  AuthRepository();

  @override
  Future<Either<AuthException, Token>> login(
      String username, String password) async {
    /// get token from api using dio
    try {
      final result = await client.dio.post('patients/login', data: {
        "USER_ID": username,
        "PASSWORD": password,
      });
      // - I’m using API that gives me:
      // status code 200 and data: token and message: ‘ok’ when credentials are ok
      // status code 200 and data: null with the message: “email has been already taken”
      // Of course, you can have different data in response from your backend
      if (result.statusCode == 200) {
        if (result.data != null) {
          // token
          final token = Token.fromJson(result.data);
          _controller.add(AuthenticationStatus.authenticated);
          return right(token);
        } else {
          return left(const AuthException.wrongEmailOrPass());
        }
      } else if (result.statusCode == 400) {
        return left(const AuthException.unknown());
      } else if (result.statusCode == 401) {
        return left(const AuthException.wrongEmailOrPass());
      } else {
        return left(const AuthException.unknown());
      }
    } on DioError catch (e, s) {
      print(e.toString());
      //this is the place you can log your error e.g. in Sentry, Firebase Crashlytics, etc.
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, Token>> registerPatient(
      String HOSPITALNO, String SSN, String TELEPHONE1, String password) async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint('FCM Token: $fcmToken');
    final result = await client.dio.post('patients/register', data: {
      "HOSPITAL_NO": HOSPITALNO,
      "SSN": SSN,
      "TELEPHONE1": TELEPHONE1,
      "password": password,
      "DEVICE_ID": fcmToken,
    });
    // - I’m using API that gives me:
    // status code 200 and data: token and message: ‘ok’ when credentials are ok
    // status code 200 and data: null with the message: “email has been already taken”
    // Of course, you can have different data in response from your backend
    try {
      if (result.statusCode == 200) {
        if (result.data != null) {
          // token
          final token = Token.fromJson(result.data);
          _controller.add(AuthenticationStatus.authenticated);
          return right(token);
        } else {
          return left(const AuthException.wrongEmailOrPass());
        }
      } else {
        return left(const AuthException.serverError());
      }
    } catch (e) {
      return left(const AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, Token>> registerDoctor(
      String STAFFCODE, String email, String password) {
    /// register doctor using dio
    // final response = _dio.post(
    //   '${kBasedUrl}token',
    //   data: {
    //     'STAFF_CODE': STAFF_CODE,
    //     'EMAIL': email,
    //     'PASSWORD': password,
    //   },
    // );
    // // return response.then((value) => Token.fromJson(value.data));
    // if (result.statusCode == 200) {
    //   if (result.data != null) {
    //     // token
    //     final token = Token.fromJson(result.data);
    //     _controller.add(AuthenticationStatus.authenticated);
    //     return right(token);
    //   } else {
    //     return left(const AuthException.wrongEmailOrPass());
    //   }
    // } else if (result.statusCode == 400) {
    //   return left(const AuthException.unknown());
    // } else if (result.statusCode == 401) {
    //   return left(const AuthException.wrongEmailOrPass());
    // } else {
    //   return left(const AuthException.unknown());
    // }
    throw UnimplementedError();
  }

  void dispose() => _controller.close();

  @override
  Future<Either<AuthException, User>> getPatientInfo() async {
    try {
      final rsponse = await client.dio.post('patients/me',
          options: Options(headers: {
            'Accept': 'application/json',
          }));
      if (rsponse.statusCode == 200) {
        _controller.add(AuthenticationStatus.authenticated);
        return right(User.fromJson(rsponse.data));
      } else {
        return left(const AuthException.unknown());
      }
    } on DioError catch (e, s) {
      _controller.add(AuthenticationStatus.unauthenticated);
      //this is the place you can log your error e.g. in Sentry, Firebase Crashlytics, etc.
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future logout() async {
    final rsponse = await client.dio.post('patients/logout',
        options: Options(headers: {
          'Accept': 'application/json',
        }));
    if (rsponse.statusCode == 200) {
      _controller.add(AuthenticationStatus.unauthenticated);
    } else {}
  }

  @override
  Future<Either<AuthException, List<UserNotifications>>>
      getNotification() async {
    final rsponse = await client.dio.get('patients/notification',
        options: Options(headers: {
          'Accept': 'application/json',
        }));
    if (rsponse.statusCode == 200) {
      _controller.add(AuthenticationStatus.authenticated);
      return right((rsponse.data as List)
          .map((e) => UserNotifications.fromJson(e))
          .toList());
    } else {
      return left(const AuthException.unknown());
    }
  }
}
