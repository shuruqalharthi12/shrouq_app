import 'package:dartz/dartz.dart';
import 'package:shrouq_app/model/clinic/clinic.dart';

import '../model/auth/auth_exception.dart';
import '../model/user/appointment.dart';

abstract class IAppointmentRepository {
  // get all appointments
  Future<Either<AuthException, List<Appointment>>> getAppointments();
  // get appointment by id
  Future<Either<AuthException, Appointment>> getAppointmentById(int id);
  // get appointment by patient id
  Future<Either<AuthException, List<Appointment>>> getAppointmentsByPatientId(
      int patientId);
  // get appointment by doctor id
  Future<Either<AuthException, List<Appointment>>> getAppointmentsByDoctorId(
      int doctorId);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDate(int doctorId, String date);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTime(
          int doctorId, String date, String time);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndPatientId(
          int doctorId, String date, String time, int patientId);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndPatientIdAndStatus(
          int doctorId, String date, String time, int patientId, int status);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndTimeAndStatus(
          int doctorId, String date, String time, int status);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndDateAndStatus(
          int doctorId, String date, int status);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByDoctorIdAndStatus(int doctorId, int status);
  // get appointment by doctor id and date
  Future<Either<AuthException, List<Appointment>>>
      getAppointmentsByPatientIdAndStatus(int patientId, int status);

  // get future appointments
  Future<Either<AuthException, List<Appointment>>> getFutureAppointments();
  // get past appointments
  Future<Either<AuthException, List<Appointment>>> getPastAppointments();
  // get available appointments from clinic
  Future<Either<AuthException, List<Clinic>>> getAvailableAppointments(
      DateTime date);
}
