// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clinic _$ClinicFromJson(Map<String, dynamic> json) {
  return _Clinic.fromJson(json);
}

/// @nodoc
mixin _$Clinic {
  @JsonKey(name: 'CLINIC_CODE')
  String? get clinicCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'LOCATION')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLINIC_DATE')
  String? get clinicDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'START_TIME')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'STOP_TIME')
  String? get stopTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLINIC_SESSION')
  String? get clinicSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'LEAD_OPERATOR')
  dynamic get leadOperator => throw _privateConstructorUsedError;
  @JsonKey(name: 'SLOT_LENGTH')
  num? get slotLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'SLOTS')
  num? get slots => throw _privateConstructorUsedError;
  @JsonKey(name: 'SEATS')
  num? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOTES')
  dynamic get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'CAPACITY')
  num? get capacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'AVG_CAPACITY')
  num? get avgCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'SLOT_VIEW')
  String? get slotView => throw _privateConstructorUsedError;
  @JsonKey(name: 'APPOINTMENTS')
  num? get appointments => throw _privateConstructorUsedError;
  @JsonKey(name: 'USED_SLOTS')
  num? get usedSlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicCopyWith<Clinic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicCopyWith<$Res> {
  factory $ClinicCopyWith(Clinic value, $Res Function(Clinic) then) =
      _$ClinicCopyWithImpl<$Res, Clinic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLINIC_CODE') String? clinicCode,
      @JsonKey(name: 'LOCATION') String? location,
      @JsonKey(name: 'CLINIC_DATE') String? clinicDate,
      @JsonKey(name: 'START_TIME') String? startTime,
      @JsonKey(name: 'STOP_TIME') String? stopTime,
      @JsonKey(name: 'CLINIC_SESSION') String? clinicSession,
      @JsonKey(name: 'LEAD_OPERATOR') dynamic leadOperator,
      @JsonKey(name: 'SLOT_LENGTH') num? slotLength,
      @JsonKey(name: 'SLOTS') num? slots,
      @JsonKey(name: 'SEATS') num? seats,
      @JsonKey(name: 'NOTES') dynamic notes,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'CAPACITY') num? capacity,
      @JsonKey(name: 'AVG_CAPACITY') num? avgCapacity,
      @JsonKey(name: 'SLOT_VIEW') String? slotView,
      @JsonKey(name: 'APPOINTMENTS') num? appointments,
      @JsonKey(name: 'USED_SLOTS') num? usedSlots});
}

/// @nodoc
class _$ClinicCopyWithImpl<$Res, $Val extends Clinic>
    implements $ClinicCopyWith<$Res> {
  _$ClinicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinicCode = freezed,
    Object? location = freezed,
    Object? clinicDate = freezed,
    Object? startTime = freezed,
    Object? stopTime = freezed,
    Object? clinicSession = freezed,
    Object? leadOperator = freezed,
    Object? slotLength = freezed,
    Object? slots = freezed,
    Object? seats = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? capacity = freezed,
    Object? avgCapacity = freezed,
    Object? slotView = freezed,
    Object? appointments = freezed,
    Object? usedSlots = freezed,
  }) {
    return _then(_value.copyWith(
      clinicCode: freezed == clinicCode
          ? _value.clinicCode
          : clinicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicDate: freezed == clinicDate
          ? _value.clinicDate
          : clinicDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicSession: freezed == clinicSession
          ? _value.clinicSession
          : clinicSession // ignore: cast_nullable_to_non_nullable
              as String?,
      leadOperator: freezed == leadOperator
          ? _value.leadOperator
          : leadOperator // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slotLength: freezed == slotLength
          ? _value.slotLength
          : slotLength // ignore: cast_nullable_to_non_nullable
              as num?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as num?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as num?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as num?,
      avgCapacity: freezed == avgCapacity
          ? _value.avgCapacity
          : avgCapacity // ignore: cast_nullable_to_non_nullable
              as num?,
      slotView: freezed == slotView
          ? _value.slotView
          : slotView // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: freezed == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as num?,
      usedSlots: freezed == usedSlots
          ? _value.usedSlots
          : usedSlots // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClinicCopyWith<$Res> implements $ClinicCopyWith<$Res> {
  factory _$$_ClinicCopyWith(_$_Clinic value, $Res Function(_$_Clinic) then) =
      __$$_ClinicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLINIC_CODE') String? clinicCode,
      @JsonKey(name: 'LOCATION') String? location,
      @JsonKey(name: 'CLINIC_DATE') String? clinicDate,
      @JsonKey(name: 'START_TIME') String? startTime,
      @JsonKey(name: 'STOP_TIME') String? stopTime,
      @JsonKey(name: 'CLINIC_SESSION') String? clinicSession,
      @JsonKey(name: 'LEAD_OPERATOR') dynamic leadOperator,
      @JsonKey(name: 'SLOT_LENGTH') num? slotLength,
      @JsonKey(name: 'SLOTS') num? slots,
      @JsonKey(name: 'SEATS') num? seats,
      @JsonKey(name: 'NOTES') dynamic notes,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'CAPACITY') num? capacity,
      @JsonKey(name: 'AVG_CAPACITY') num? avgCapacity,
      @JsonKey(name: 'SLOT_VIEW') String? slotView,
      @JsonKey(name: 'APPOINTMENTS') num? appointments,
      @JsonKey(name: 'USED_SLOTS') num? usedSlots});
}

/// @nodoc
class __$$_ClinicCopyWithImpl<$Res>
    extends _$ClinicCopyWithImpl<$Res, _$_Clinic>
    implements _$$_ClinicCopyWith<$Res> {
  __$$_ClinicCopyWithImpl(_$_Clinic _value, $Res Function(_$_Clinic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clinicCode = freezed,
    Object? location = freezed,
    Object? clinicDate = freezed,
    Object? startTime = freezed,
    Object? stopTime = freezed,
    Object? clinicSession = freezed,
    Object? leadOperator = freezed,
    Object? slotLength = freezed,
    Object? slots = freezed,
    Object? seats = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? capacity = freezed,
    Object? avgCapacity = freezed,
    Object? slotView = freezed,
    Object? appointments = freezed,
    Object? usedSlots = freezed,
  }) {
    return _then(_$_Clinic(
      clinicCode: freezed == clinicCode
          ? _value.clinicCode
          : clinicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicDate: freezed == clinicDate
          ? _value.clinicDate
          : clinicDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      stopTime: freezed == stopTime
          ? _value.stopTime
          : stopTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicSession: freezed == clinicSession
          ? _value.clinicSession
          : clinicSession // ignore: cast_nullable_to_non_nullable
              as String?,
      leadOperator: freezed == leadOperator
          ? _value.leadOperator
          : leadOperator // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slotLength: freezed == slotLength
          ? _value.slotLength
          : slotLength // ignore: cast_nullable_to_non_nullable
              as num?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as num?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as num?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as num?,
      avgCapacity: freezed == avgCapacity
          ? _value.avgCapacity
          : avgCapacity // ignore: cast_nullable_to_non_nullable
              as num?,
      slotView: freezed == slotView
          ? _value.slotView
          : slotView // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: freezed == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as num?,
      usedSlots: freezed == usedSlots
          ? _value.usedSlots
          : usedSlots // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Clinic implements _Clinic {
  _$_Clinic(
      {@JsonKey(name: 'CLINIC_CODE') this.clinicCode,
      @JsonKey(name: 'LOCATION') this.location,
      @JsonKey(name: 'CLINIC_DATE') this.clinicDate,
      @JsonKey(name: 'START_TIME') this.startTime,
      @JsonKey(name: 'STOP_TIME') this.stopTime,
      @JsonKey(name: 'CLINIC_SESSION') this.clinicSession,
      @JsonKey(name: 'LEAD_OPERATOR') this.leadOperator,
      @JsonKey(name: 'SLOT_LENGTH') this.slotLength,
      @JsonKey(name: 'SLOTS') this.slots,
      @JsonKey(name: 'SEATS') this.seats,
      @JsonKey(name: 'NOTES') this.notes,
      @JsonKey(name: 'STATUS') this.status,
      @JsonKey(name: 'CAPACITY') this.capacity,
      @JsonKey(name: 'AVG_CAPACITY') this.avgCapacity,
      @JsonKey(name: 'SLOT_VIEW') this.slotView,
      @JsonKey(name: 'APPOINTMENTS') this.appointments,
      @JsonKey(name: 'USED_SLOTS') this.usedSlots});

  factory _$_Clinic.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicFromJson(json);

  @override
  @JsonKey(name: 'CLINIC_CODE')
  final String? clinicCode;
  @override
  @JsonKey(name: 'LOCATION')
  final String? location;
  @override
  @JsonKey(name: 'CLINIC_DATE')
  final String? clinicDate;
  @override
  @JsonKey(name: 'START_TIME')
  final String? startTime;
  @override
  @JsonKey(name: 'STOP_TIME')
  final String? stopTime;
  @override
  @JsonKey(name: 'CLINIC_SESSION')
  final String? clinicSession;
  @override
  @JsonKey(name: 'LEAD_OPERATOR')
  final dynamic leadOperator;
  @override
  @JsonKey(name: 'SLOT_LENGTH')
  final num? slotLength;
  @override
  @JsonKey(name: 'SLOTS')
  final num? slots;
  @override
  @JsonKey(name: 'SEATS')
  final num? seats;
  @override
  @JsonKey(name: 'NOTES')
  final dynamic notes;
  @override
  @JsonKey(name: 'STATUS')
  final String? status;
  @override
  @JsonKey(name: 'CAPACITY')
  final num? capacity;
  @override
  @JsonKey(name: 'AVG_CAPACITY')
  final num? avgCapacity;
  @override
  @JsonKey(name: 'SLOT_VIEW')
  final String? slotView;
  @override
  @JsonKey(name: 'APPOINTMENTS')
  final num? appointments;
  @override
  @JsonKey(name: 'USED_SLOTS')
  final num? usedSlots;

  @override
  String toString() {
    return 'Clinic(clinicCode: $clinicCode, location: $location, clinicDate: $clinicDate, startTime: $startTime, stopTime: $stopTime, clinicSession: $clinicSession, leadOperator: $leadOperator, slotLength: $slotLength, slots: $slots, seats: $seats, notes: $notes, status: $status, capacity: $capacity, avgCapacity: $avgCapacity, slotView: $slotView, appointments: $appointments, usedSlots: $usedSlots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Clinic &&
            (identical(other.clinicCode, clinicCode) ||
                other.clinicCode == clinicCode) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.clinicDate, clinicDate) ||
                other.clinicDate == clinicDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.stopTime, stopTime) ||
                other.stopTime == stopTime) &&
            (identical(other.clinicSession, clinicSession) ||
                other.clinicSession == clinicSession) &&
            const DeepCollectionEquality()
                .equals(other.leadOperator, leadOperator) &&
            (identical(other.slotLength, slotLength) ||
                other.slotLength == slotLength) &&
            (identical(other.slots, slots) || other.slots == slots) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.avgCapacity, avgCapacity) ||
                other.avgCapacity == avgCapacity) &&
            (identical(other.slotView, slotView) ||
                other.slotView == slotView) &&
            (identical(other.appointments, appointments) ||
                other.appointments == appointments) &&
            (identical(other.usedSlots, usedSlots) ||
                other.usedSlots == usedSlots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clinicCode,
      location,
      clinicDate,
      startTime,
      stopTime,
      clinicSession,
      const DeepCollectionEquality().hash(leadOperator),
      slotLength,
      slots,
      seats,
      const DeepCollectionEquality().hash(notes),
      status,
      capacity,
      avgCapacity,
      slotView,
      appointments,
      usedSlots);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClinicCopyWith<_$_Clinic> get copyWith =>
      __$$_ClinicCopyWithImpl<_$_Clinic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicToJson(
      this,
    );
  }
}

abstract class _Clinic implements Clinic {
  factory _Clinic(
      {@JsonKey(name: 'CLINIC_CODE') final String? clinicCode,
      @JsonKey(name: 'LOCATION') final String? location,
      @JsonKey(name: 'CLINIC_DATE') final String? clinicDate,
      @JsonKey(name: 'START_TIME') final String? startTime,
      @JsonKey(name: 'STOP_TIME') final String? stopTime,
      @JsonKey(name: 'CLINIC_SESSION') final String? clinicSession,
      @JsonKey(name: 'LEAD_OPERATOR') final dynamic leadOperator,
      @JsonKey(name: 'SLOT_LENGTH') final num? slotLength,
      @JsonKey(name: 'SLOTS') final num? slots,
      @JsonKey(name: 'SEATS') final num? seats,
      @JsonKey(name: 'NOTES') final dynamic notes,
      @JsonKey(name: 'STATUS') final String? status,
      @JsonKey(name: 'CAPACITY') final num? capacity,
      @JsonKey(name: 'AVG_CAPACITY') final num? avgCapacity,
      @JsonKey(name: 'SLOT_VIEW') final String? slotView,
      @JsonKey(name: 'APPOINTMENTS') final num? appointments,
      @JsonKey(name: 'USED_SLOTS') final num? usedSlots}) = _$_Clinic;

  factory _Clinic.fromJson(Map<String, dynamic> json) = _$_Clinic.fromJson;

  @override
  @JsonKey(name: 'CLINIC_CODE')
  String? get clinicCode;
  @override
  @JsonKey(name: 'LOCATION')
  String? get location;
  @override
  @JsonKey(name: 'CLINIC_DATE')
  String? get clinicDate;
  @override
  @JsonKey(name: 'START_TIME')
  String? get startTime;
  @override
  @JsonKey(name: 'STOP_TIME')
  String? get stopTime;
  @override
  @JsonKey(name: 'CLINIC_SESSION')
  String? get clinicSession;
  @override
  @JsonKey(name: 'LEAD_OPERATOR')
  dynamic get leadOperator;
  @override
  @JsonKey(name: 'SLOT_LENGTH')
  num? get slotLength;
  @override
  @JsonKey(name: 'SLOTS')
  num? get slots;
  @override
  @JsonKey(name: 'SEATS')
  num? get seats;
  @override
  @JsonKey(name: 'NOTES')
  dynamic get notes;
  @override
  @JsonKey(name: 'STATUS')
  String? get status;
  @override
  @JsonKey(name: 'CAPACITY')
  num? get capacity;
  @override
  @JsonKey(name: 'AVG_CAPACITY')
  num? get avgCapacity;
  @override
  @JsonKey(name: 'SLOT_VIEW')
  String? get slotView;
  @override
  @JsonKey(name: 'APPOINTMENTS')
  num? get appointments;
  @override
  @JsonKey(name: 'USED_SLOTS')
  num? get usedSlots;
  @override
  @JsonKey(ignore: true)
  _$$_ClinicCopyWith<_$_Clinic> get copyWith =>
      throw _privateConstructorUsedError;
}
