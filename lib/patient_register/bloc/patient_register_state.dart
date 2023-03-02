part of 'patient_register_bloc.dart';

@freezed
class PatientRegisterState with _$PatientRegisterState {
  const factory PatientRegisterState.initial() = _Initial;
  const factory PatientRegisterState.loading() = _Loading;
  const factory PatientRegisterState.authorized() = _Authorized;
  const factory PatientRegisterState.error(AuthException error) = _Error;
}
