part of 'book_appointment_bloc.dart';

@freezed
abstract class BookAppointmentEvent with _$BookAppointmentEvent {
  const factory BookAppointmentEvent.fetchAppointment(DateTime date) =
      _FetchAppointment;
}
