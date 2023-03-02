import 'package:dartz/dartz.dart';
import 'package:shrouq_app/model/user/user.dart';
import 'package:shrouq_app/model/user_notifications/user_notifications.dart';

import '../model/auth/auth_exception.dart';
import '../model/token/token.dart';

abstract class AuthImpl {
  // get token from api
  Future<Either<AuthException, Token>> login(String username, String password);
  // patient registration
  Future<Either<AuthException, Token>> registerPatient(
      String HOSPITAL_NO, String SSN, String TELEPHONE1, String password);
  // register doctor
  Future<Either<AuthException, Token>> registerDoctor(
      String STAFF_CODE, String email, String password);
  //get patient info
  Future<Either<AuthException, User>> getPatientInfo();

  // get notitfication
  Future<Either<AuthException, List<UserNotifications>>> getNotification();

  Future logout();
}
