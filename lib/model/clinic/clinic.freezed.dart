// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String? get slotLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'SLOTS')
  String? get slots => throw _privateConstructorUsedError;
  @JsonKey(name: 'SEATS')
  String? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOTES')
  dynamic get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'CAPACITY')
  String? get capacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'AVG_CAPACITY')
  String? get avgCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARCHIVE')
  String? get archive => throw _privateConstructorUsedError;
  @JsonKey(name: 'SLOT_VIEW')
  String? get slotView => throw _privateConstructorUsedError;
  @JsonKey(name: 'APPOINTMENTS')
  String? get appointments => throw _privateConstructorUsedError;
  @JsonKey(name: 'USED_SLOTS')
  String? get usedSlots => throw _privateConstructorUsedError;
  @JsonKey(name: 'TREATMENT_FORM')
  String? get treatmentForm => throw _privateConstructorUsedError;
  @JsonKey(name: 'APPT_TYPE')
  String? get apptType => throw _privateConstructorUsedError;
  @JsonKey(name: 'CSSD_ORDERED')
  String? get cssdOrdered => throw _privateConstructorUsedError;
  @JsonKey(name: 'REQ_CHAIR_BOOK')
  int? get reqChairBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'TX_AREA')
  dynamic get txArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'ROT_TYPE')
  dynamic get rotType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ACTIVITY_TYPE')
  dynamic get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DISCIPLINE_CODE')
  String? get disciplineCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'PLACE_OF_SERVICE')
  dynamic get placeOfService => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALLOW_STU_BOOKING')
  String? get allowStuBooking => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'SLOT_LENGTH') String? slotLength,
      @JsonKey(name: 'SLOTS') String? slots,
      @JsonKey(name: 'SEATS') String? seats,
      @JsonKey(name: 'NOTES') dynamic notes,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'CAPACITY') String? capacity,
      @JsonKey(name: 'AVG_CAPACITY') String? avgCapacity,
      @JsonKey(name: 'ARCHIVE') String? archive,
      @JsonKey(name: 'SLOT_VIEW') String? slotView,
      @JsonKey(name: 'APPOINTMENTS') String? appointments,
      @JsonKey(name: 'USED_SLOTS') String? usedSlots,
      @JsonKey(name: 'TREATMENT_FORM') String? treatmentForm,
      @JsonKey(name: 'APPT_TYPE') String? apptType,
      @JsonKey(name: 'CSSD_ORDERED') String? cssdOrdered,
      @JsonKey(name: 'REQ_CHAIR_BOOK') int? reqChairBook,
      @JsonKey(name: 'TX_AREA') dynamic txArea,
      @JsonKey(name: 'ROT_TYPE') dynamic rotType,
      @JsonKey(name: 'ACTIVITY_TYPE') dynamic activityType,
      @JsonKey(name: 'DISCIPLINE_CODE') String? disciplineCode,
      @JsonKey(name: 'PLACE_OF_SERVICE') dynamic placeOfService,
      @JsonKey(name: 'ALLOW_STU_BOOKING') String? allowStuBooking});
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
    Object? leadOperator = null,
    Object? slotLength = freezed,
    Object? slots = freezed,
    Object? seats = freezed,
    Object? notes = null,
    Object? status = freezed,
    Object? capacity = freezed,
    Object? avgCapacity = freezed,
    Object? archive = freezed,
    Object? slotView = freezed,
    Object? appointments = freezed,
    Object? usedSlots = freezed,
    Object? treatmentForm = freezed,
    Object? apptType = freezed,
    Object? cssdOrdered = freezed,
    Object? reqChairBook = freezed,
    Object? txArea = null,
    Object? rotType = null,
    Object? activityType = null,
    Object? disciplineCode = freezed,
    Object? placeOfService = null,
    Object? allowStuBooking = freezed,
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
      leadOperator: null == leadOperator
          ? _value.leadOperator
          : leadOperator // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slotLength: freezed == slotLength
          ? _value.slotLength
          : slotLength // ignore: cast_nullable_to_non_nullable
              as String?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
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
              as String?,
      avgCapacity: freezed == avgCapacity
          ? _value.avgCapacity
          : avgCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      archive: freezed == archive
          ? _value.archive
          : archive // ignore: cast_nullable_to_non_nullable
              as String?,
      slotView: freezed == slotView
          ? _value.slotView
          : slotView // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: freezed == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as String?,
      usedSlots: freezed == usedSlots
          ? _value.usedSlots
          : usedSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      treatmentForm: freezed == treatmentForm
          ? _value.treatmentForm
          : treatmentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      apptType: freezed == apptType
          ? _value.apptType
          : apptType // ignore: cast_nullable_to_non_nullable
              as String?,
      cssdOrdered: freezed == cssdOrdered
          ? _value.cssdOrdered
          : cssdOrdered // ignore: cast_nullable_to_non_nullable
              as String?,
      reqChairBook: freezed == reqChairBook
          ? _value.reqChairBook
          : reqChairBook // ignore: cast_nullable_to_non_nullable
              as int?,
      txArea: null == txArea
          ? _value.txArea
          : txArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rotType: null == rotType
          ? _value.rotType
          : rotType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      disciplineCode: freezed == disciplineCode
          ? _value.disciplineCode
          : disciplineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfService: null == placeOfService
          ? _value.placeOfService
          : placeOfService // ignore: cast_nullable_to_non_nullable
              as dynamic,
      allowStuBooking: freezed == allowStuBooking
          ? _value.allowStuBooking
          : allowStuBooking // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'SLOT_LENGTH') String? slotLength,
      @JsonKey(name: 'SLOTS') String? slots,
      @JsonKey(name: 'SEATS') String? seats,
      @JsonKey(name: 'NOTES') dynamic notes,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'CAPACITY') String? capacity,
      @JsonKey(name: 'AVG_CAPACITY') String? avgCapacity,
      @JsonKey(name: 'ARCHIVE') String? archive,
      @JsonKey(name: 'SLOT_VIEW') String? slotView,
      @JsonKey(name: 'APPOINTMENTS') String? appointments,
      @JsonKey(name: 'USED_SLOTS') String? usedSlots,
      @JsonKey(name: 'TREATMENT_FORM') String? treatmentForm,
      @JsonKey(name: 'APPT_TYPE') String? apptType,
      @JsonKey(name: 'CSSD_ORDERED') String? cssdOrdered,
      @JsonKey(name: 'REQ_CHAIR_BOOK') int? reqChairBook,
      @JsonKey(name: 'TX_AREA') dynamic txArea,
      @JsonKey(name: 'ROT_TYPE') dynamic rotType,
      @JsonKey(name: 'ACTIVITY_TYPE') dynamic activityType,
      @JsonKey(name: 'DISCIPLINE_CODE') String? disciplineCode,
      @JsonKey(name: 'PLACE_OF_SERVICE') dynamic placeOfService,
      @JsonKey(name: 'ALLOW_STU_BOOKING') String? allowStuBooking});
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
    Object? leadOperator = null,
    Object? slotLength = freezed,
    Object? slots = freezed,
    Object? seats = freezed,
    Object? notes = null,
    Object? status = freezed,
    Object? capacity = freezed,
    Object? avgCapacity = freezed,
    Object? archive = freezed,
    Object? slotView = freezed,
    Object? appointments = freezed,
    Object? usedSlots = freezed,
    Object? treatmentForm = freezed,
    Object? apptType = freezed,
    Object? cssdOrdered = freezed,
    Object? reqChairBook = freezed,
    Object? txArea = null,
    Object? rotType = null,
    Object? activityType = null,
    Object? disciplineCode = freezed,
    Object? placeOfService = null,
    Object? allowStuBooking = freezed,
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
      leadOperator: null == leadOperator
          ? _value.leadOperator
          : leadOperator // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slotLength: freezed == slotLength
          ? _value.slotLength
          : slotLength // ignore: cast_nullable_to_non_nullable
              as String?,
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
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
              as String?,
      avgCapacity: freezed == avgCapacity
          ? _value.avgCapacity
          : avgCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      archive: freezed == archive
          ? _value.archive
          : archive // ignore: cast_nullable_to_non_nullable
              as String?,
      slotView: freezed == slotView
          ? _value.slotView
          : slotView // ignore: cast_nullable_to_non_nullable
              as String?,
      appointments: freezed == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as String?,
      usedSlots: freezed == usedSlots
          ? _value.usedSlots
          : usedSlots // ignore: cast_nullable_to_non_nullable
              as String?,
      treatmentForm: freezed == treatmentForm
          ? _value.treatmentForm
          : treatmentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      apptType: freezed == apptType
          ? _value.apptType
          : apptType // ignore: cast_nullable_to_non_nullable
              as String?,
      cssdOrdered: freezed == cssdOrdered
          ? _value.cssdOrdered
          : cssdOrdered // ignore: cast_nullable_to_non_nullable
              as String?,
      reqChairBook: freezed == reqChairBook
          ? _value.reqChairBook
          : reqChairBook // ignore: cast_nullable_to_non_nullable
              as int?,
      txArea: null == txArea
          ? _value.txArea
          : txArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rotType: null == rotType
          ? _value.rotType
          : rotType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      disciplineCode: freezed == disciplineCode
          ? _value.disciplineCode
          : disciplineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfService: null == placeOfService
          ? _value.placeOfService
          : placeOfService // ignore: cast_nullable_to_non_nullable
              as dynamic,
      allowStuBooking: freezed == allowStuBooking
          ? _value.allowStuBooking
          : allowStuBooking // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'ARCHIVE') this.archive,
      @JsonKey(name: 'SLOT_VIEW') this.slotView,
      @JsonKey(name: 'APPOINTMENTS') this.appointments,
      @JsonKey(name: 'USED_SLOTS') this.usedSlots,
      @JsonKey(name: 'TREATMENT_FORM') this.treatmentForm,
      @JsonKey(name: 'APPT_TYPE') this.apptType,
      @JsonKey(name: 'CSSD_ORDERED') this.cssdOrdered,
      @JsonKey(name: 'REQ_CHAIR_BOOK') this.reqChairBook,
      @JsonKey(name: 'TX_AREA') this.txArea,
      @JsonKey(name: 'ROT_TYPE') this.rotType,
      @JsonKey(name: 'ACTIVITY_TYPE') this.activityType,
      @JsonKey(name: 'DISCIPLINE_CODE') this.disciplineCode,
      @JsonKey(name: 'PLACE_OF_SERVICE') this.placeOfService,
      @JsonKey(name: 'ALLOW_STU_BOOKING') this.allowStuBooking});

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
  final String? slotLength;
  @override
  @JsonKey(name: 'SLOTS')
  final String? slots;
  @override
  @JsonKey(name: 'SEATS')
  final String? seats;
  @override
  @JsonKey(name: 'NOTES')
  final dynamic notes;
  @override
  @JsonKey(name: 'STATUS')
  final String? status;
  @override
  @JsonKey(name: 'CAPACITY')
  final String? capacity;
  @override
  @JsonKey(name: 'AVG_CAPACITY')
  final String? avgCapacity;
  @override
  @JsonKey(name: 'ARCHIVE')
  final String? archive;
  @override
  @JsonKey(name: 'SLOT_VIEW')
  final String? slotView;
  @override
  @JsonKey(name: 'APPOINTMENTS')
  final String? appointments;
  @override
  @JsonKey(name: 'USED_SLOTS')
  final String? usedSlots;
  @override
  @JsonKey(name: 'TREATMENT_FORM')
  final String? treatmentForm;
  @override
  @JsonKey(name: 'APPT_TYPE')
  final String? apptType;
  @override
  @JsonKey(name: 'CSSD_ORDERED')
  final String? cssdOrdered;
  @override
  @JsonKey(name: 'REQ_CHAIR_BOOK')
  final int? reqChairBook;
  @override
  @JsonKey(name: 'TX_AREA')
  final dynamic txArea;
  @override
  @JsonKey(name: 'ROT_TYPE')
  final dynamic rotType;
  @override
  @JsonKey(name: 'ACTIVITY_TYPE')
  final dynamic activityType;
  @override
  @JsonKey(name: 'DISCIPLINE_CODE')
  final String? disciplineCode;
  @override
  @JsonKey(name: 'PLACE_OF_SERVICE')
  final dynamic placeOfService;
  @override
  @JsonKey(name: 'ALLOW_STU_BOOKING')
  final String? allowStuBooking;

  @override
  String toString() {
    return 'Clinic(clinicCode: $clinicCode, location: $location, clinicDate: $clinicDate, startTime: $startTime, stopTime: $stopTime, clinicSession: $clinicSession, leadOperator: $leadOperator, slotLength: $slotLength, slots: $slots, seats: $seats, notes: $notes, status: $status, capacity: $capacity, avgCapacity: $avgCapacity, archive: $archive, slotView: $slotView, appointments: $appointments, usedSlots: $usedSlots, treatmentForm: $treatmentForm, apptType: $apptType, cssdOrdered: $cssdOrdered, reqChairBook: $reqChairBook, txArea: $txArea, rotType: $rotType, activityType: $activityType, disciplineCode: $disciplineCode, placeOfService: $placeOfService, allowStuBooking: $allowStuBooking)';
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
            (identical(other.archive, archive) || other.archive == archive) &&
            (identical(other.slotView, slotView) ||
                other.slotView == slotView) &&
            (identical(other.appointments, appointments) ||
                other.appointments == appointments) &&
            (identical(other.usedSlots, usedSlots) ||
                other.usedSlots == usedSlots) &&
            (identical(other.treatmentForm, treatmentForm) ||
                other.treatmentForm == treatmentForm) &&
            (identical(other.apptType, apptType) ||
                other.apptType == apptType) &&
            (identical(other.cssdOrdered, cssdOrdered) ||
                other.cssdOrdered == cssdOrdered) &&
            (identical(other.reqChairBook, reqChairBook) ||
                other.reqChairBook == reqChairBook) &&
            const DeepCollectionEquality().equals(other.txArea, txArea) &&
            const DeepCollectionEquality().equals(other.rotType, rotType) &&
            const DeepCollectionEquality()
                .equals(other.activityType, activityType) &&
            (identical(other.disciplineCode, disciplineCode) ||
                other.disciplineCode == disciplineCode) &&
            const DeepCollectionEquality()
                .equals(other.placeOfService, placeOfService) &&
            (identical(other.allowStuBooking, allowStuBooking) ||
                other.allowStuBooking == allowStuBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        archive,
        slotView,
        appointments,
        usedSlots,
        treatmentForm,
        apptType,
        cssdOrdered,
        reqChairBook,
        const DeepCollectionEquality().hash(txArea),
        const DeepCollectionEquality().hash(rotType),
        const DeepCollectionEquality().hash(activityType),
        disciplineCode,
        const DeepCollectionEquality().hash(placeOfService),
        allowStuBooking
      ]);

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
          @JsonKey(name: 'SLOT_LENGTH') final String? slotLength,
          @JsonKey(name: 'SLOTS') final String? slots,
          @JsonKey(name: 'SEATS') final String? seats,
          @JsonKey(name: 'NOTES') final dynamic notes,
          @JsonKey(name: 'STATUS') final String? status,
          @JsonKey(name: 'CAPACITY') final String? capacity,
          @JsonKey(name: 'AVG_CAPACITY') final String? avgCapacity,
          @JsonKey(name: 'ARCHIVE') final String? archive,
          @JsonKey(name: 'SLOT_VIEW') final String? slotView,
          @JsonKey(name: 'APPOINTMENTS') final String? appointments,
          @JsonKey(name: 'USED_SLOTS') final String? usedSlots,
          @JsonKey(name: 'TREATMENT_FORM') final String? treatmentForm,
          @JsonKey(name: 'APPT_TYPE') final String? apptType,
          @JsonKey(name: 'CSSD_ORDERED') final String? cssdOrdered,
          @JsonKey(name: 'REQ_CHAIR_BOOK') final int? reqChairBook,
          @JsonKey(name: 'TX_AREA') final dynamic txArea,
          @JsonKey(name: 'ROT_TYPE') final dynamic rotType,
          @JsonKey(name: 'ACTIVITY_TYPE') final dynamic activityType,
          @JsonKey(name: 'DISCIPLINE_CODE') final String? disciplineCode,
          @JsonKey(name: 'PLACE_OF_SERVICE') final dynamic placeOfService,
          @JsonKey(name: 'ALLOW_STU_BOOKING') final String? allowStuBooking}) =
      _$_Clinic;

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
  String? get slotLength;
  @override
  @JsonKey(name: 'SLOTS')
  String? get slots;
  @override
  @JsonKey(name: 'SEATS')
  String? get seats;
  @override
  @JsonKey(name: 'NOTES')
  dynamic get notes;
  @override
  @JsonKey(name: 'STATUS')
  String? get status;
  @override
  @JsonKey(name: 'CAPACITY')
  String? get capacity;
  @override
  @JsonKey(name: 'AVG_CAPACITY')
  String? get avgCapacity;
  @override
  @JsonKey(name: 'ARCHIVE')
  String? get archive;
  @override
  @JsonKey(name: 'SLOT_VIEW')
  String? get slotView;
  @override
  @JsonKey(name: 'APPOINTMENTS')
  String? get appointments;
  @override
  @JsonKey(name: 'USED_SLOTS')
  String? get usedSlots;
  @override
  @JsonKey(name: 'TREATMENT_FORM')
  String? get treatmentForm;
  @override
  @JsonKey(name: 'APPT_TYPE')
  String? get apptType;
  @override
  @JsonKey(name: 'CSSD_ORDERED')
  String? get cssdOrdered;
  @override
  @JsonKey(name: 'REQ_CHAIR_BOOK')
  int? get reqChairBook;
  @override
  @JsonKey(name: 'TX_AREA')
  dynamic get txArea;
  @override
  @JsonKey(name: 'ROT_TYPE')
  dynamic get rotType;
  @override
  @JsonKey(name: 'ACTIVITY_TYPE')
  dynamic get activityType;
  @override
  @JsonKey(name: 'DISCIPLINE_CODE')
  String? get disciplineCode;
  @override
  @JsonKey(name: 'PLACE_OF_SERVICE')
  dynamic get placeOfService;
  @override
  @JsonKey(name: 'ALLOW_STU_BOOKING')
  String? get allowStuBooking;
  @override
  @JsonKey(ignore: true)
  _$$_ClinicCopyWith<_$_Clinic> get copyWith =>
      throw _privateConstructorUsedError;
}
