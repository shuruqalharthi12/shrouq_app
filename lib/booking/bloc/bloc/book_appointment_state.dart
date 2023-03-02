part of 'book_appointment_bloc.dart';

// using freezed
@freezed
abstract class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState.initial() = _Initial;
  const factory BookAppointmentState.loading() = _Loading;
  const factory BookAppointmentState.loaded(List<Clinic> appointments) =
      _Loaded;
  const factory BookAppointmentState.error(String message) = _Error;
}
