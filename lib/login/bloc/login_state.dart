part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.authorized() = _Authorized;
  const factory LoginState.error(AuthException error) = _Error;
}
