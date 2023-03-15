part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.sendOtp(String phone, BuildContext context) =
      SendOtpEvent;
  const factory OtpEvent.verifyOtp(String otp,String otp_passcode, BuildContext context) =
      VerifyOtpEvent;
}
