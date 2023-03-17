// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNotifications _$UserNotificationsFromJson(Map<String, dynamic> json) {
  return _UserNotifications.fromJson(json);
}

/// @nodoc
mixin _$UserNotifications {
  @JsonKey(name: 'HOSPITAL_NO')
  String? get hospitalNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'MESSAGE_TITLE')
  String? get messageTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'MESSAGE_BODY')
  String? get messageBody => throw _privateConstructorUsedError;
  @JsonKey(name: 'DATE_CREATED')
  String? get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNotificationsCopyWith<UserNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationsCopyWith<$Res> {
  factory $UserNotificationsCopyWith(
          UserNotifications value, $Res Function(UserNotifications) then) =
      _$UserNotificationsCopyWithImpl<$Res, UserNotifications>;
  @useResult
  $Res call(
      {@JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
      @JsonKey(name: 'MESSAGE_TITLE') String? messageTitle,
      @JsonKey(name: 'MESSAGE_BODY') String? messageBody,
      @JsonKey(name: 'DATE_CREATED') String? dateCreated});
}

/// @nodoc
class _$UserNotificationsCopyWithImpl<$Res, $Val extends UserNotifications>
    implements $UserNotificationsCopyWith<$Res> {
  _$UserNotificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalNo = freezed,
    Object? messageTitle = freezed,
    Object? messageBody = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      hospitalNo: freezed == hospitalNo
          ? _value.hospitalNo
          : hospitalNo // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTitle: freezed == messageTitle
          ? _value.messageTitle
          : messageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      messageBody: freezed == messageBody
          ? _value.messageBody
          : messageBody // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserNotificationsCopyWith<$Res>
    implements $UserNotificationsCopyWith<$Res> {
  factory _$$_UserNotificationsCopyWith(_$_UserNotifications value,
          $Res Function(_$_UserNotifications) then) =
      __$$_UserNotificationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
      @JsonKey(name: 'MESSAGE_TITLE') String? messageTitle,
      @JsonKey(name: 'MESSAGE_BODY') String? messageBody,
      @JsonKey(name: 'DATE_CREATED') String? dateCreated});
}

/// @nodoc
class __$$_UserNotificationsCopyWithImpl<$Res>
    extends _$UserNotificationsCopyWithImpl<$Res, _$_UserNotifications>
    implements _$$_UserNotificationsCopyWith<$Res> {
  __$$_UserNotificationsCopyWithImpl(
      _$_UserNotifications _value, $Res Function(_$_UserNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalNo = freezed,
    Object? messageTitle = freezed,
    Object? messageBody = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_$_UserNotifications(
      hospitalNo: freezed == hospitalNo
          ? _value.hospitalNo
          : hospitalNo // ignore: cast_nullable_to_non_nullable
              as String?,
      messageTitle: freezed == messageTitle
          ? _value.messageTitle
          : messageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      messageBody: freezed == messageBody
          ? _value.messageBody
          : messageBody // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserNotifications implements _UserNotifications {
  _$_UserNotifications(
      {@JsonKey(name: 'HOSPITAL_NO') this.hospitalNo,
      @JsonKey(name: 'MESSAGE_TITLE') this.messageTitle,
      @JsonKey(name: 'MESSAGE_BODY') this.messageBody,
      @JsonKey(name: 'DATE_CREATED') this.dateCreated});

  factory _$_UserNotifications.fromJson(Map<String, dynamic> json) =>
      _$$_UserNotificationsFromJson(json);

  @override
  @JsonKey(name: 'HOSPITAL_NO')
  final String? hospitalNo;
  @override
  @JsonKey(name: 'MESSAGE_TITLE')
  final String? messageTitle;
  @override
  @JsonKey(name: 'MESSAGE_BODY')
  final String? messageBody;
  @override
  @JsonKey(name: 'DATE_CREATED')
  final String? dateCreated;

  @override
  String toString() {
    return 'UserNotifications(hospitalNo: $hospitalNo, messageTitle: $messageTitle, messageBody: $messageBody, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNotifications &&
            (identical(other.hospitalNo, hospitalNo) ||
                other.hospitalNo == hospitalNo) &&
            (identical(other.messageTitle, messageTitle) ||
                other.messageTitle == messageTitle) &&
            (identical(other.messageBody, messageBody) ||
                other.messageBody == messageBody) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hospitalNo, messageTitle, messageBody, dateCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNotificationsCopyWith<_$_UserNotifications> get copyWith =>
      __$$_UserNotificationsCopyWithImpl<_$_UserNotifications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNotificationsToJson(
      this,
    );
  }
}

abstract class _UserNotifications implements UserNotifications {
  factory _UserNotifications(
          {@JsonKey(name: 'HOSPITAL_NO') final String? hospitalNo,
          @JsonKey(name: 'MESSAGE_TITLE') final String? messageTitle,
          @JsonKey(name: 'MESSAGE_BODY') final String? messageBody,
          @JsonKey(name: 'DATE_CREATED') final String? dateCreated}) =
      _$_UserNotifications;

  factory _UserNotifications.fromJson(Map<String, dynamic> json) =
      _$_UserNotifications.fromJson;

  @override
  @JsonKey(name: 'HOSPITAL_NO')
  String? get hospitalNo;
  @override
  @JsonKey(name: 'MESSAGE_TITLE')
  String? get messageTitle;
  @override
  @JsonKey(name: 'MESSAGE_BODY')
  String? get messageBody;
  @override
  @JsonKey(name: 'DATE_CREATED')
  String? get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$_UserNotificationsCopyWith<_$_UserNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}
