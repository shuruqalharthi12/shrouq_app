import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_notifications.freezed.dart';
part 'user_notifications.g.dart';

@freezed
class UserNotifications with _$UserNotifications {
  factory UserNotifications({
    @JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
    @JsonKey(name: 'MESSAGE_TITLE') String? messageTitle,
    @JsonKey(name: 'MESSAGE_BODY') String? messageBody,
    @JsonKey(name: 'DATE_CREATED') String? dateCreated,
  }) = _UserNotifications;

  factory UserNotifications.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationsFromJson(json);
}
