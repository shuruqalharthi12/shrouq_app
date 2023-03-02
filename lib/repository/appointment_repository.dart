import 'package:shrouq_app/model/auth/auth_exception.dart';

import 'package:dartz/dartz.dart';
import 'package:shrouq_app/model/clinic/clinic.dart';
import 'package:shrouq_app/repository/dio_client.dart';

import '../core/di.dart';
import '../model/user/appointment.dart';
import 'appointment_impl.dart';

class AppointmentRepository implements IAppointmentRepository {
  DioClient client = inject<DioClient>();

  AppointmentRepository();

  @override
  Future<Either<AuthException, Appointment>> getAppointmentById(int id) async {
    // TODO: implement getAppointmentById
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>> getAppointmentsByDoctorId(
      int doctorId) {
    // TODO: implement getAppointmentsByDoctorId
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDate(int doctorId, String date) {
    // TODO: implement getAppointmentsByDoctorIdAndDate
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndStatus(
          int doctorId, String date, int status) {
    // TODO: implement getAppointmentsByDoctorIdAndDateAndStatus
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTime(
          int doctorId, String date, String time) {
    // TODO: implement getAppointmentsByDoctorIdAndDateAndTime
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndPatientId(
          int doctorId, String date, String time, int patientId) {
    // TODO: implement getAppointmentsByDoctorIdAndDateAndTimeAndPatientId
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndPatientIdAndStatus(
          int doctorId, String date, String time, int patientId, int status) {
    // TODO: implement getAppointmentsByDoctorIdAndDateAndTimeAndPatientIdAndStatus
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndStatus(
          int doctorId, String date, String time, int status) {
    // TODO: implement getAppointmentsByDoctorIdAndDateAndTimeAndStatus
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndStatus(int doctorId, int status) {
    // TODO: implement getAppointmentsByDoctorIdAndStatus
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>> getAppointmentsByPatientId(
      int patientId) {
    // TODO: implement getAppointmentsByPatientId
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByPatientIdAndStatus(int patientId, int status) {
    // TODO: implement getAppointmentsByPatientIdAndStatus
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthException, List<Appointment>>> getAppointments() async {
    // get all appointments using clinet
    final response = await client.dio.get('appointments');
    if (response.statusCode == 200) {
      // parse response to list of appointments
      final appointments = (response.data as List)
          .map((appointment) => Appointment.fromJson(appointment))
          .toList();
      return Right(appointments);
    } else {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, List<Appointment>>>
      getFutureAppointments() async {
    final response = await client.dio.get('appointments/future');
    if (response.statusCode == 200) {
      // parse response to list of appointments
      final appointments = (response.data as List)
          .map((appointment) => Appointment.fromJson(appointment))
          .toList();
      return Right(appointments);
    } else {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, List<Appointment>>> getPastAppointments() async {
    final response = await client.dio.get('appointments/past');
    if (response.statusCode == 200) {
      // parse response to list of appointments
      final appointments = (response.data as List)
          .map((appointment) => Appointment.fromJson(appointment))
          .toList();
      return Right(appointments);
    } else {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, List<Clinic>>> getAvailableAppointments(
      DateTime date) async {
    // change date to Y-m-d format
    final formattedDate = '${date.year}-${date.month}-${date.day}';
    final response = await client.dio.post('appointments/available', data: {
      'date': formattedDate,
    });
    if (response.statusCode == 200) {
      // parse response to list of appointments
      final appointments = (response.data as List)
          .map((appointment) => Clinic.fromJson(appointment))
          .toList();
      return Right(appointments);
    } else {
      return const Left(AuthException.serverError());
    }
  }
}
