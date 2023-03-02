part of 'notification_bloc.dart';

// using freezed
@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded(
      List<UserNotifications> userNotifications) = _Loaded;
  const factory NotificationState.error(String message) = _Error;
}
