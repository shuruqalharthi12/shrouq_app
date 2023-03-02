part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.getAllAppointments() = _GetAllAppointments;
  const factory AppointmentEvent.getAppointmentById(int id) =
      _GetAppointmentById;
  const factory AppointmentEvent.getAppointmentsByPatientId(int patientId) =
      _GetAppointmentsByPatientId;
  const factory AppointmentEvent.getAppointmentsByDoctorId(int doctorId) =
      _GetAppointmentsByDoctorId;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDate(
      int doctorId, String date) = _GetAppointmentsByDoctorIdAndDate;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDateAndTime(
          int doctorId, String date, String time) =
      _GetAppointmentsByDoctorIdAndDateAndTime;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDateAndTimeAndPatientId(
          int doctorId, String date, String time, int patientId) =
      _GetAppointmentsByDoctorIdAndDateAndTimeAndPatientId;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDateAndTimeAndPatientIdAndStatus(
          int doctorId, String date, String time, int patientId, int status) =
      _GetAppointmentsByDoctorIdAndDateAndTimeAndPatientIdAndStatus;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDateAndTimeAndStatus(
          int doctorId, String date, String time, int status) =
      _GetAppointmentsByDoctorIdAndDateAndTimeAndStatus;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndDateAndStatus(
          int doctorId, String date, int status) =
      _GetAppointmentsByDoctorIdAndDateAndStatus;
  const factory AppointmentEvent.getAppointmentsByDoctorIdAndStatus(
      int doctorId, int status) = _GetAppointmentsByDoctorIdAndStatus;
  const factory AppointmentEvent.getAppointmentsByPatientIdAndStatus(
      int patientId, int status) = _GetAppointmentsByPatientIdAndStatus;
  const factory AppointmentEvent.getFutureAppointments() =
      _GetFutureAppointments;
  const factory AppointmentEvent.getPastAppointments() = _GetPastAppointments;
}
