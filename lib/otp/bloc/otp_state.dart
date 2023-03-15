part of 'otp_bloc.dart';

//  using freezed
@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.loaded(String checkCode, String phone) = _Loaded;
  const factory OtpState.authorized() = _Authorized;
  const factory OtpState.error(String error) = _Error;
  const factory OtpState.verified() = _Verified;
}
