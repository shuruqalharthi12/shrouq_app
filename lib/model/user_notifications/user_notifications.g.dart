// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserNotifications _$$_UserNotificationsFromJson(Map<String, dynamic> json) =>
    _$_UserNotifications(
      hospitalNo: json['HOSPITAL_NO'] as int?,
      messageTitle: json['MESSAGE_TITLE'] as String?,
      messageBody: json['MESSAGE_BODY'] as String?,
      dateCreated: json['DATE_CREATED'] as String?,
    );

Map<String, dynamic> _$$_UserNotificationsToJson(
        _$_UserNotifications instance) =>
    <String, dynamic>{
      'HOSPITAL_NO': instance.hospitalNo,
      'MESSAGE_TITLE': instance.messageTitle,
      'MESSAGE_BODY': instance.messageBody,
      'DATE_CREATED': instance.dateCreated,
    };
