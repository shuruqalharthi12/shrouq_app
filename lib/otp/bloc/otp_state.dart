part of 'otp_bloc.dart';

//  using freezed
@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.loaded() =_Loaded;
  const factory OtpState.authorized() = _Authorized;
  const factory OtpState.error(AuthException error) = _Error;
}

