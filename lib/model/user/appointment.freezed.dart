// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  @JsonKey(name: 'APPT_NUMBER')
  String? get apptNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLINIC_CODE')
  String? get clinicCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'TYPE')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'HOSPITAL_NO')
  String? get hospitalNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'EPISODE_NO')
  String? get episodeNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'WL_ENTRY_NO')
  dynamic get wlEntryNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'OPERATOR1_TO_SEE')
  Operator? get operator1ToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'OP1_TX_AREA')
  String? get op1TxArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'OPERATOR2_TO_SEE')
  dynamic get operator2ToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'OP2_TX_AREA')
  dynamic get op2TxArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUPERVISOR_TO_SEE')
  Operator? get supervisorToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIME_START_TO_SEE')
  String? get timeStartToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIME_STOP_TO_SEE')
  String? get timeStopToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'DURATION_TO_SEE')
  num? get durationToSee => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'TREATMENT_FORM')
  String? get treatmentForm =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'NOTES') dynamic notes,
// @JsonKey(name: 'CANC_SYSTEM_NOTE') dynamic cancSystemNote,
  @JsonKey(name: 'TIME_START_SEEN')
  String? get timeStartSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIME_STOP_SEEN')
  String? get timeStopSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'DURATION_SEEN')
  String? get durationSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'OPERATOR1_SEEN')
  String? get operator1Seen =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'OP1_TX_AREA_SEEN') String? op1TxAreaSeen,
  @JsonKey(name: 'OPERATOR2_SEEN')
  dynamic get operator2Seen =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'OP2_TX_AREA_SEEN') dynamic op2TxAreaSeen,
  @JsonKey(name: 'SUPERVISOR_SEEN')
  dynamic get supervisorSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOTES_POST_APPT')
  dynamic get notesPostAppt =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'CSSD_ORDERED') String? cssdOrdered,
//@JsonKey(name: 'CSSD_ORDERED_DATE') dynamic cssdOrderedDate,
//  @JsonKey(name: 'UPDATED_BY') String? updatedBy,
//  @JsonKey(name: 'UPDATED_DATE') String? updatedDate,
// @JsonKey(name: 'AUTH_BY') dynamic authBy,
// @JsonKey(name: 'DNA_INVOICED') String? dnaInvoiced,
// @JsonKey(name: 'DNA_INVOICED_VALUE') String? dnaInvoicedValue,
//  @JsonKey(name: 'AUTH_DATE') dynamic authDate,
  @JsonKey(name: 'MANDATORY_COMMENTS')
  dynamic get mandatoryComments =>
      throw _privateConstructorUsedError; //  @JsonKey(name: 'PROFICIENCY') dynamic proficiency,
// @JsonKey(name: 'GRADE') dynamic grade,
//  @JsonKey(name: 'CONFIRMED') String? confirmed,
//  @JsonKey(name: 'DATE_CONFIRMED') dynamic dateConfirmed,
// @JsonKey(name: 'CHAIRNO') String? chairno,
// @JsonKey(name: 'STATUS_DETAILS') dynamic statusDetails,
// @JsonKey(name: 'NONCOFIRM_DETAILS') dynamic noncofirmDetails,
// @JsonKey(name: 'AUTH_OP1_BY') dynamic authOp1By,
// @JsonKey(name: 'AUTH_OP1_DATE') dynamic authOp1Date,
// @JsonKey(name: 'AUTH_OP2_BY') dynamic authOp2By,
// @JsonKey(name: 'AUTH_OP2_DATE') dynamic authOp2Date,
//  @JsonKey(name: 'NOT_SENT_DATE') dynamic notSentDate,
//  @JsonKey(name: 'NOT_SENT_BY') dynamic notSentBy,
//  @JsonKey(name: 'NOT_RECIEVED_DATE') dynamic notRecievedDate,
//  @JsonKey(name: 'NOT_RECEIVED_BY') dynamic notReceivedBy,
// @JsonKey(name: 'DATE_CREATED') String? dateCreated,
// @JsonKey(name: 'OPERATOR2_ROLE') dynamic operator2Role,
  @JsonKey(name: 'OPERATOR1_ROLE')
  String? get operator1Role =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'REMINDER_NUMBER') int? reminderNumber,
  @JsonKey(name: 'APP_START_CHECK')
  int? get appStartCheck =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'TREATMENT_CATEGORIES_CODE') dynamic treatmentCategoriesCode,
// @JsonKey(name: 'PN_VERSION') int? pnVersion,
// @JsonKey(name: 'RESCHEDULED_FROM') dynamic rescheduledFrom,
// @JsonKey(name: 'CREATED_BY') String? createdBy,
// @JsonKey(name: 'PAS_APPOINTMENT_ID') dynamic pasAppointmentId,
// @JsonKey(name: 'CHAIRS_IN_CLINIC_ID') int? chairsInClinicId,
//  @JsonKey(name: 'FINISHED_BY') dynamic finishedBy,
// @JsonKey(name: 'FINISHED_DATE') dynamic finishedDate,
// @JsonKey(name: 'GONE_BY') dynamic goneBy,
//@JsonKey(name: 'GONE_DATE') dynamic goneDate,
// @JsonKey(name: 'API_SESSION_CODE') dynamic apiSessionCode,
//@JsonKey(name: 'CG_INIT_CLINIC') dynamic cgInitClinic,
  Clinic? get clinic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'APPT_NUMBER') String? apptNumber,
      @JsonKey(name: 'CLINIC_CODE') String? clinicCode,
      @JsonKey(name: 'TYPE') String? type,
      @JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
      @JsonKey(name: 'EPISODE_NO') String? episodeNo,
      @JsonKey(name: 'WL_ENTRY_NO') dynamic wlEntryNo,
      @JsonKey(name: 'OPERATOR1_TO_SEE') Operator? operator1ToSee,
      @JsonKey(name: 'OP1_TX_AREA') String? op1TxArea,
      @JsonKey(name: 'OPERATOR2_TO_SEE') dynamic operator2ToSee,
      @JsonKey(name: 'OP2_TX_AREA') dynamic op2TxArea,
      @JsonKey(name: 'SUPERVISOR_TO_SEE') Operator? supervisorToSee,
      @JsonKey(name: 'TIME_START_TO_SEE') String? timeStartToSee,
      @JsonKey(name: 'TIME_STOP_TO_SEE') String? timeStopToSee,
      @JsonKey(name: 'DURATION_TO_SEE') num? durationToSee,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'TREATMENT_FORM') String? treatmentForm,
      @JsonKey(name: 'TIME_START_SEEN') String? timeStartSeen,
      @JsonKey(name: 'TIME_STOP_SEEN') String? timeStopSeen,
      @JsonKey(name: 'DURATION_SEEN') String? durationSeen,
      @JsonKey(name: 'OPERATOR1_SEEN') String? operator1Seen,
      @JsonKey(name: 'OPERATOR2_SEEN') dynamic operator2Seen,
      @JsonKey(name: 'SUPERVISOR_SEEN') dynamic supervisorSeen,
      @JsonKey(name: 'NOTES_POST_APPT') dynamic notesPostAppt,
      @JsonKey(name: 'MANDATORY_COMMENTS') dynamic mandatoryComments,
      @JsonKey(name: 'OPERATOR1_ROLE') String? operator1Role,
      @JsonKey(name: 'APP_START_CHECK') int? appStartCheck,
      Clinic? clinic});

  $OperatorCopyWith<$Res>? get operator1ToSee;
  $OperatorCopyWith<$Res>? get supervisorToSee;
  $ClinicCopyWith<$Res>? get clinic;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apptNumber = freezed,
    Object? clinicCode = freezed,
    Object? type = freezed,
    Object? hospitalNo = freezed,
    Object? episodeNo = freezed,
    Object? wlEntryNo = freezed,
    Object? operator1ToSee = freezed,
    Object? op1TxArea = freezed,
    Object? operator2ToSee = freezed,
    Object? op2TxArea = freezed,
    Object? supervisorToSee = freezed,
    Object? timeStartToSee = freezed,
    Object? timeStopToSee = freezed,
    Object? durationToSee = freezed,
    Object? status = freezed,
    Object? treatmentForm = freezed,
    Object? timeStartSeen = freezed,
    Object? timeStopSeen = freezed,
    Object? durationSeen = freezed,
    Object? operator1Seen = freezed,
    Object? operator2Seen = freezed,
    Object? supervisorSeen = freezed,
    Object? notesPostAppt = freezed,
    Object? mandatoryComments = freezed,
    Object? operator1Role = freezed,
    Object? appStartCheck = freezed,
    Object? clinic = freezed,
  }) {
    return _then(_value.copyWith(
      apptNumber: freezed == apptNumber
          ? _value.apptNumber
          : apptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicCode: freezed == clinicCode
          ? _value.clinicCode
          : clinicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalNo: freezed == hospitalNo
          ? _value.hospitalNo
          : hospitalNo // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNo: freezed == episodeNo
          ? _value.episodeNo
          : episodeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      wlEntryNo: freezed == wlEntryNo
          ? _value.wlEntryNo
          : wlEntryNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      operator1ToSee: freezed == operator1ToSee
          ? _value.operator1ToSee
          : operator1ToSee // ignore: cast_nullable_to_non_nullable
              as Operator?,
      op1TxArea: freezed == op1TxArea
          ? _value.op1TxArea
          : op1TxArea // ignore: cast_nullable_to_non_nullable
              as String?,
      operator2ToSee: freezed == operator2ToSee
          ? _value.operator2ToSee
          : operator2ToSee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      op2TxArea: freezed == op2TxArea
          ? _value.op2TxArea
          : op2TxArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      supervisorToSee: freezed == supervisorToSee
          ? _value.supervisorToSee
          : supervisorToSee // ignore: cast_nullable_to_non_nullable
              as Operator?,
      timeStartToSee: freezed == timeStartToSee
          ? _value.timeStartToSee
          : timeStartToSee // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStopToSee: freezed == timeStopToSee
          ? _value.timeStopToSee
          : timeStopToSee // ignore: cast_nullable_to_non_nullable
              as String?,
      durationToSee: freezed == durationToSee
          ? _value.durationToSee
          : durationToSee // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      treatmentForm: freezed == treatmentForm
          ? _value.treatmentForm
          : treatmentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStartSeen: freezed == timeStartSeen
          ? _value.timeStartSeen
          : timeStartSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStopSeen: freezed == timeStopSeen
          ? _value.timeStopSeen
          : timeStopSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeen: freezed == durationSeen
          ? _value.durationSeen
          : durationSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      operator1Seen: freezed == operator1Seen
          ? _value.operator1Seen
          : operator1Seen // ignore: cast_nullable_to_non_nullable
              as String?,
      operator2Seen: freezed == operator2Seen
          ? _value.operator2Seen
          : operator2Seen // ignore: cast_nullable_to_non_nullable
              as dynamic,
      supervisorSeen: freezed == supervisorSeen
          ? _value.supervisorSeen
          : supervisorSeen // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notesPostAppt: freezed == notesPostAppt
          ? _value.notesPostAppt
          : notesPostAppt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mandatoryComments: freezed == mandatoryComments
          ? _value.mandatoryComments
          : mandatoryComments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      operator1Role: freezed == operator1Role
          ? _value.operator1Role
          : operator1Role // ignore: cast_nullable_to_non_nullable
              as String?,
      appStartCheck: freezed == appStartCheck
          ? _value.appStartCheck
          : appStartCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      clinic: freezed == clinic
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperatorCopyWith<$Res>? get operator1ToSee {
    if (_value.operator1ToSee == null) {
      return null;
    }

    return $OperatorCopyWith<$Res>(_value.operator1ToSee!, (value) {
      return _then(_value.copyWith(operator1ToSee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperatorCopyWith<$Res>? get supervisorToSee {
    if (_value.supervisorToSee == null) {
      return null;
    }

    return $OperatorCopyWith<$Res>(_value.supervisorToSee!, (value) {
      return _then(_value.copyWith(supervisorToSee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicCopyWith<$Res>? get clinic {
    if (_value.clinic == null) {
      return null;
    }

    return $ClinicCopyWith<$Res>(_value.clinic!, (value) {
      return _then(_value.copyWith(clinic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$_AppointmentCopyWith(
          _$_Appointment value, $Res Function(_$_Appointment) then) =
      __$$_AppointmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'APPT_NUMBER') String? apptNumber,
      @JsonKey(name: 'CLINIC_CODE') String? clinicCode,
      @JsonKey(name: 'TYPE') String? type,
      @JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
      @JsonKey(name: 'EPISODE_NO') String? episodeNo,
      @JsonKey(name: 'WL_ENTRY_NO') dynamic wlEntryNo,
      @JsonKey(name: 'OPERATOR1_TO_SEE') Operator? operator1ToSee,
      @JsonKey(name: 'OP1_TX_AREA') String? op1TxArea,
      @JsonKey(name: 'OPERATOR2_TO_SEE') dynamic operator2ToSee,
      @JsonKey(name: 'OP2_TX_AREA') dynamic op2TxArea,
      @JsonKey(name: 'SUPERVISOR_TO_SEE') Operator? supervisorToSee,
      @JsonKey(name: 'TIME_START_TO_SEE') String? timeStartToSee,
      @JsonKey(name: 'TIME_STOP_TO_SEE') String? timeStopToSee,
      @JsonKey(name: 'DURATION_TO_SEE') num? durationToSee,
      @JsonKey(name: 'STATUS') String? status,
      @JsonKey(name: 'TREATMENT_FORM') String? treatmentForm,
      @JsonKey(name: 'TIME_START_SEEN') String? timeStartSeen,
      @JsonKey(name: 'TIME_STOP_SEEN') String? timeStopSeen,
      @JsonKey(name: 'DURATION_SEEN') String? durationSeen,
      @JsonKey(name: 'OPERATOR1_SEEN') String? operator1Seen,
      @JsonKey(name: 'OPERATOR2_SEEN') dynamic operator2Seen,
      @JsonKey(name: 'SUPERVISOR_SEEN') dynamic supervisorSeen,
      @JsonKey(name: 'NOTES_POST_APPT') dynamic notesPostAppt,
      @JsonKey(name: 'MANDATORY_COMMENTS') dynamic mandatoryComments,
      @JsonKey(name: 'OPERATOR1_ROLE') String? operator1Role,
      @JsonKey(name: 'APP_START_CHECK') int? appStartCheck,
      Clinic? clinic});

  @override
  $OperatorCopyWith<$Res>? get operator1ToSee;
  @override
  $OperatorCopyWith<$Res>? get supervisorToSee;
  @override
  $ClinicCopyWith<$Res>? get clinic;
}

/// @nodoc
class __$$_AppointmentCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$_Appointment>
    implements _$$_AppointmentCopyWith<$Res> {
  __$$_AppointmentCopyWithImpl(
      _$_Appointment _value, $Res Function(_$_Appointment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apptNumber = freezed,
    Object? clinicCode = freezed,
    Object? type = freezed,
    Object? hospitalNo = freezed,
    Object? episodeNo = freezed,
    Object? wlEntryNo = freezed,
    Object? operator1ToSee = freezed,
    Object? op1TxArea = freezed,
    Object? operator2ToSee = freezed,
    Object? op2TxArea = freezed,
    Object? supervisorToSee = freezed,
    Object? timeStartToSee = freezed,
    Object? timeStopToSee = freezed,
    Object? durationToSee = freezed,
    Object? status = freezed,
    Object? treatmentForm = freezed,
    Object? timeStartSeen = freezed,
    Object? timeStopSeen = freezed,
    Object? durationSeen = freezed,
    Object? operator1Seen = freezed,
    Object? operator2Seen = freezed,
    Object? supervisorSeen = freezed,
    Object? notesPostAppt = freezed,
    Object? mandatoryComments = freezed,
    Object? operator1Role = freezed,
    Object? appStartCheck = freezed,
    Object? clinic = freezed,
  }) {
    return _then(_$_Appointment(
      apptNumber: freezed == apptNumber
          ? _value.apptNumber
          : apptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicCode: freezed == clinicCode
          ? _value.clinicCode
          : clinicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hospitalNo: freezed == hospitalNo
          ? _value.hospitalNo
          : hospitalNo // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNo: freezed == episodeNo
          ? _value.episodeNo
          : episodeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      wlEntryNo: freezed == wlEntryNo
          ? _value.wlEntryNo
          : wlEntryNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      operator1ToSee: freezed == operator1ToSee
          ? _value.operator1ToSee
          : operator1ToSee // ignore: cast_nullable_to_non_nullable
              as Operator?,
      op1TxArea: freezed == op1TxArea
          ? _value.op1TxArea
          : op1TxArea // ignore: cast_nullable_to_non_nullable
              as String?,
      operator2ToSee: freezed == operator2ToSee
          ? _value.operator2ToSee
          : operator2ToSee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      op2TxArea: freezed == op2TxArea
          ? _value.op2TxArea
          : op2TxArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      supervisorToSee: freezed == supervisorToSee
          ? _value.supervisorToSee
          : supervisorToSee // ignore: cast_nullable_to_non_nullable
              as Operator?,
      timeStartToSee: freezed == timeStartToSee
          ? _value.timeStartToSee
          : timeStartToSee // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStopToSee: freezed == timeStopToSee
          ? _value.timeStopToSee
          : timeStopToSee // ignore: cast_nullable_to_non_nullable
              as String?,
      durationToSee: freezed == durationToSee
          ? _value.durationToSee
          : durationToSee // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      treatmentForm: freezed == treatmentForm
          ? _value.treatmentForm
          : treatmentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStartSeen: freezed == timeStartSeen
          ? _value.timeStartSeen
          : timeStartSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStopSeen: freezed == timeStopSeen
          ? _value.timeStopSeen
          : timeStopSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeen: freezed == durationSeen
          ? _value.durationSeen
          : durationSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      operator1Seen: freezed == operator1Seen
          ? _value.operator1Seen
          : operator1Seen // ignore: cast_nullable_to_non_nullable
              as String?,
      operator2Seen: freezed == operator2Seen
          ? _value.operator2Seen
          : operator2Seen // ignore: cast_nullable_to_non_nullable
              as dynamic,
      supervisorSeen: freezed == supervisorSeen
          ? _value.supervisorSeen
          : supervisorSeen // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notesPostAppt: freezed == notesPostAppt
          ? _value.notesPostAppt
          : notesPostAppt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mandatoryComments: freezed == mandatoryComments
          ? _value.mandatoryComments
          : mandatoryComments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      operator1Role: freezed == operator1Role
          ? _value.operator1Role
          : operator1Role // ignore: cast_nullable_to_non_nullable
              as String?,
      appStartCheck: freezed == appStartCheck
          ? _value.appStartCheck
          : appStartCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      clinic: freezed == clinic
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Appointment implements _Appointment {
  _$_Appointment(
      {@JsonKey(name: 'APPT_NUMBER') this.apptNumber,
      @JsonKey(name: 'CLINIC_CODE') this.clinicCode,
      @JsonKey(name: 'TYPE') this.type,
      @JsonKey(name: 'HOSPITAL_NO') this.hospitalNo,
      @JsonKey(name: 'EPISODE_NO') this.episodeNo,
      @JsonKey(name: 'WL_ENTRY_NO') this.wlEntryNo,
      @JsonKey(name: 'OPERATOR1_TO_SEE') this.operator1ToSee,
      @JsonKey(name: 'OP1_TX_AREA') this.op1TxArea,
      @JsonKey(name: 'OPERATOR2_TO_SEE') this.operator2ToSee,
      @JsonKey(name: 'OP2_TX_AREA') this.op2TxArea,
      @JsonKey(name: 'SUPERVISOR_TO_SEE') this.supervisorToSee,
      @JsonKey(name: 'TIME_START_TO_SEE') this.timeStartToSee,
      @JsonKey(name: 'TIME_STOP_TO_SEE') this.timeStopToSee,
      @JsonKey(name: 'DURATION_TO_SEE') this.durationToSee,
      @JsonKey(name: 'STATUS') this.status,
      @JsonKey(name: 'TREATMENT_FORM') this.treatmentForm,
      @JsonKey(name: 'TIME_START_SEEN') this.timeStartSeen,
      @JsonKey(name: 'TIME_STOP_SEEN') this.timeStopSeen,
      @JsonKey(name: 'DURATION_SEEN') this.durationSeen,
      @JsonKey(name: 'OPERATOR1_SEEN') this.operator1Seen,
      @JsonKey(name: 'OPERATOR2_SEEN') this.operator2Seen,
      @JsonKey(name: 'SUPERVISOR_SEEN') this.supervisorSeen,
      @JsonKey(name: 'NOTES_POST_APPT') this.notesPostAppt,
      @JsonKey(name: 'MANDATORY_COMMENTS') this.mandatoryComments,
      @JsonKey(name: 'OPERATOR1_ROLE') this.operator1Role,
      @JsonKey(name: 'APP_START_CHECK') this.appStartCheck,
      this.clinic});

  factory _$_Appointment.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentFromJson(json);

  @override
  @JsonKey(name: 'APPT_NUMBER')
  final String? apptNumber;
  @override
  @JsonKey(name: 'CLINIC_CODE')
  final String? clinicCode;
  @override
  @JsonKey(name: 'TYPE')
  final String? type;
  @override
  @JsonKey(name: 'HOSPITAL_NO')
  final String? hospitalNo;
  @override
  @JsonKey(name: 'EPISODE_NO')
  final String? episodeNo;
  @override
  @JsonKey(name: 'WL_ENTRY_NO')
  final dynamic wlEntryNo;
  @override
  @JsonKey(name: 'OPERATOR1_TO_SEE')
  final Operator? operator1ToSee;
  @override
  @JsonKey(name: 'OP1_TX_AREA')
  final String? op1TxArea;
  @override
  @JsonKey(name: 'OPERATOR2_TO_SEE')
  final dynamic operator2ToSee;
  @override
  @JsonKey(name: 'OP2_TX_AREA')
  final dynamic op2TxArea;
  @override
  @JsonKey(name: 'SUPERVISOR_TO_SEE')
  final Operator? supervisorToSee;
  @override
  @JsonKey(name: 'TIME_START_TO_SEE')
  final String? timeStartToSee;
  @override
  @JsonKey(name: 'TIME_STOP_TO_SEE')
  final String? timeStopToSee;
  @override
  @JsonKey(name: 'DURATION_TO_SEE')
  final num? durationToSee;
  @override
  @JsonKey(name: 'STATUS')
  final String? status;
  @override
  @JsonKey(name: 'TREATMENT_FORM')
  final String? treatmentForm;
// @JsonKey(name: 'NOTES') dynamic notes,
// @JsonKey(name: 'CANC_SYSTEM_NOTE') dynamic cancSystemNote,
  @override
  @JsonKey(name: 'TIME_START_SEEN')
  final String? timeStartSeen;
  @override
  @JsonKey(name: 'TIME_STOP_SEEN')
  final String? timeStopSeen;
  @override
  @JsonKey(name: 'DURATION_SEEN')
  final String? durationSeen;
  @override
  @JsonKey(name: 'OPERATOR1_SEEN')
  final String? operator1Seen;
// @JsonKey(name: 'OP1_TX_AREA_SEEN') String? op1TxAreaSeen,
  @override
  @JsonKey(name: 'OPERATOR2_SEEN')
  final dynamic operator2Seen;
// @JsonKey(name: 'OP2_TX_AREA_SEEN') dynamic op2TxAreaSeen,
  @override
  @JsonKey(name: 'SUPERVISOR_SEEN')
  final dynamic supervisorSeen;
  @override
  @JsonKey(name: 'NOTES_POST_APPT')
  final dynamic notesPostAppt;
// @JsonKey(name: 'CSSD_ORDERED') String? cssdOrdered,
//@JsonKey(name: 'CSSD_ORDERED_DATE') dynamic cssdOrderedDate,
//  @JsonKey(name: 'UPDATED_BY') String? updatedBy,
//  @JsonKey(name: 'UPDATED_DATE') String? updatedDate,
// @JsonKey(name: 'AUTH_BY') dynamic authBy,
// @JsonKey(name: 'DNA_INVOICED') String? dnaInvoiced,
// @JsonKey(name: 'DNA_INVOICED_VALUE') String? dnaInvoicedValue,
//  @JsonKey(name: 'AUTH_DATE') dynamic authDate,
  @override
  @JsonKey(name: 'MANDATORY_COMMENTS')
  final dynamic mandatoryComments;
//  @JsonKey(name: 'PROFICIENCY') dynamic proficiency,
// @JsonKey(name: 'GRADE') dynamic grade,
//  @JsonKey(name: 'CONFIRMED') String? confirmed,
//  @JsonKey(name: 'DATE_CONFIRMED') dynamic dateConfirmed,
// @JsonKey(name: 'CHAIRNO') String? chairno,
// @JsonKey(name: 'STATUS_DETAILS') dynamic statusDetails,
// @JsonKey(name: 'NONCOFIRM_DETAILS') dynamic noncofirmDetails,
// @JsonKey(name: 'AUTH_OP1_BY') dynamic authOp1By,
// @JsonKey(name: 'AUTH_OP1_DATE') dynamic authOp1Date,
// @JsonKey(name: 'AUTH_OP2_BY') dynamic authOp2By,
// @JsonKey(name: 'AUTH_OP2_DATE') dynamic authOp2Date,
//  @JsonKey(name: 'NOT_SENT_DATE') dynamic notSentDate,
//  @JsonKey(name: 'NOT_SENT_BY') dynamic notSentBy,
//  @JsonKey(name: 'NOT_RECIEVED_DATE') dynamic notRecievedDate,
//  @JsonKey(name: 'NOT_RECEIVED_BY') dynamic notReceivedBy,
// @JsonKey(name: 'DATE_CREATED') String? dateCreated,
// @JsonKey(name: 'OPERATOR2_ROLE') dynamic operator2Role,
  @override
  @JsonKey(name: 'OPERATOR1_ROLE')
  final String? operator1Role;
// @JsonKey(name: 'REMINDER_NUMBER') int? reminderNumber,
  @override
  @JsonKey(name: 'APP_START_CHECK')
  final int? appStartCheck;
// @JsonKey(name: 'TREATMENT_CATEGORIES_CODE') dynamic treatmentCategoriesCode,
// @JsonKey(name: 'PN_VERSION') int? pnVersion,
// @JsonKey(name: 'RESCHEDULED_FROM') dynamic rescheduledFrom,
// @JsonKey(name: 'CREATED_BY') String? createdBy,
// @JsonKey(name: 'PAS_APPOINTMENT_ID') dynamic pasAppointmentId,
// @JsonKey(name: 'CHAIRS_IN_CLINIC_ID') int? chairsInClinicId,
//  @JsonKey(name: 'FINISHED_BY') dynamic finishedBy,
// @JsonKey(name: 'FINISHED_DATE') dynamic finishedDate,
// @JsonKey(name: 'GONE_BY') dynamic goneBy,
//@JsonKey(name: 'GONE_DATE') dynamic goneDate,
// @JsonKey(name: 'API_SESSION_CODE') dynamic apiSessionCode,
//@JsonKey(name: 'CG_INIT_CLINIC') dynamic cgInitClinic,
  @override
  final Clinic? clinic;

  @override
  String toString() {
    return 'Appointment(apptNumber: $apptNumber, clinicCode: $clinicCode, type: $type, hospitalNo: $hospitalNo, episodeNo: $episodeNo, wlEntryNo: $wlEntryNo, operator1ToSee: $operator1ToSee, op1TxArea: $op1TxArea, operator2ToSee: $operator2ToSee, op2TxArea: $op2TxArea, supervisorToSee: $supervisorToSee, timeStartToSee: $timeStartToSee, timeStopToSee: $timeStopToSee, durationToSee: $durationToSee, status: $status, treatmentForm: $treatmentForm, timeStartSeen: $timeStartSeen, timeStopSeen: $timeStopSeen, durationSeen: $durationSeen, operator1Seen: $operator1Seen, operator2Seen: $operator2Seen, supervisorSeen: $supervisorSeen, notesPostAppt: $notesPostAppt, mandatoryComments: $mandatoryComments, operator1Role: $operator1Role, appStartCheck: $appStartCheck, clinic: $clinic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appointment &&
            (identical(other.apptNumber, apptNumber) ||
                other.apptNumber == apptNumber) &&
            (identical(other.clinicCode, clinicCode) ||
                other.clinicCode == clinicCode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hospitalNo, hospitalNo) ||
                other.hospitalNo == hospitalNo) &&
            (identical(other.episodeNo, episodeNo) ||
                other.episodeNo == episodeNo) &&
            const DeepCollectionEquality().equals(other.wlEntryNo, wlEntryNo) &&
            (identical(other.operator1ToSee, operator1ToSee) ||
                other.operator1ToSee == operator1ToSee) &&
            (identical(other.op1TxArea, op1TxArea) ||
                other.op1TxArea == op1TxArea) &&
            const DeepCollectionEquality()
                .equals(other.operator2ToSee, operator2ToSee) &&
            const DeepCollectionEquality().equals(other.op2TxArea, op2TxArea) &&
            (identical(other.supervisorToSee, supervisorToSee) ||
                other.supervisorToSee == supervisorToSee) &&
            (identical(other.timeStartToSee, timeStartToSee) ||
                other.timeStartToSee == timeStartToSee) &&
            (identical(other.timeStopToSee, timeStopToSee) ||
                other.timeStopToSee == timeStopToSee) &&
            (identical(other.durationToSee, durationToSee) ||
                other.durationToSee == durationToSee) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.treatmentForm, treatmentForm) ||
                other.treatmentForm == treatmentForm) &&
            (identical(other.timeStartSeen, timeStartSeen) ||
                other.timeStartSeen == timeStartSeen) &&
            (identical(other.timeStopSeen, timeStopSeen) ||
                other.timeStopSeen == timeStopSeen) &&
            (identical(other.durationSeen, durationSeen) ||
                other.durationSeen == durationSeen) &&
            (identical(other.operator1Seen, operator1Seen) ||
                other.operator1Seen == operator1Seen) &&
            const DeepCollectionEquality()
                .equals(other.operator2Seen, operator2Seen) &&
            const DeepCollectionEquality()
                .equals(other.supervisorSeen, supervisorSeen) &&
            const DeepCollectionEquality()
                .equals(other.notesPostAppt, notesPostAppt) &&
            const DeepCollectionEquality()
                .equals(other.mandatoryComments, mandatoryComments) &&
            (identical(other.operator1Role, operator1Role) ||
                other.operator1Role == operator1Role) &&
            (identical(other.appStartCheck, appStartCheck) ||
                other.appStartCheck == appStartCheck) &&
            (identical(other.clinic, clinic) || other.clinic == clinic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        apptNumber,
        clinicCode,
        type,
        hospitalNo,
        episodeNo,
        const DeepCollectionEquality().hash(wlEntryNo),
        operator1ToSee,
        op1TxArea,
        const DeepCollectionEquality().hash(operator2ToSee),
        const DeepCollectionEquality().hash(op2TxArea),
        supervisorToSee,
        timeStartToSee,
        timeStopToSee,
        durationToSee,
        status,
        treatmentForm,
        timeStartSeen,
        timeStopSeen,
        durationSeen,
        operator1Seen,
        const DeepCollectionEquality().hash(operator2Seen),
        const DeepCollectionEquality().hash(supervisorSeen),
        const DeepCollectionEquality().hash(notesPostAppt),
        const DeepCollectionEquality().hash(mandatoryComments),
        operator1Role,
        appStartCheck,
        clinic
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      __$$_AppointmentCopyWithImpl<_$_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  factory _Appointment(
      {@JsonKey(name: 'APPT_NUMBER') final String? apptNumber,
      @JsonKey(name: 'CLINIC_CODE') final String? clinicCode,
      @JsonKey(name: 'TYPE') final String? type,
      @JsonKey(name: 'HOSPITAL_NO') final String? hospitalNo,
      @JsonKey(name: 'EPISODE_NO') final String? episodeNo,
      @JsonKey(name: 'WL_ENTRY_NO') final dynamic wlEntryNo,
      @JsonKey(name: 'OPERATOR1_TO_SEE') final Operator? operator1ToSee,
      @JsonKey(name: 'OP1_TX_AREA') final String? op1TxArea,
      @JsonKey(name: 'OPERATOR2_TO_SEE') final dynamic operator2ToSee,
      @JsonKey(name: 'OP2_TX_AREA') final dynamic op2TxArea,
      @JsonKey(name: 'SUPERVISOR_TO_SEE') final Operator? supervisorToSee,
      @JsonKey(name: 'TIME_START_TO_SEE') final String? timeStartToSee,
      @JsonKey(name: 'TIME_STOP_TO_SEE') final String? timeStopToSee,
      @JsonKey(name: 'DURATION_TO_SEE') final num? durationToSee,
      @JsonKey(name: 'STATUS') final String? status,
      @JsonKey(name: 'TREATMENT_FORM') final String? treatmentForm,
      @JsonKey(name: 'TIME_START_SEEN') final String? timeStartSeen,
      @JsonKey(name: 'TIME_STOP_SEEN') final String? timeStopSeen,
      @JsonKey(name: 'DURATION_SEEN') final String? durationSeen,
      @JsonKey(name: 'OPERATOR1_SEEN') final String? operator1Seen,
      @JsonKey(name: 'OPERATOR2_SEEN') final dynamic operator2Seen,
      @JsonKey(name: 'SUPERVISOR_SEEN') final dynamic supervisorSeen,
      @JsonKey(name: 'NOTES_POST_APPT') final dynamic notesPostAppt,
      @JsonKey(name: 'MANDATORY_COMMENTS') final dynamic mandatoryComments,
      @JsonKey(name: 'OPERATOR1_ROLE') final String? operator1Role,
      @JsonKey(name: 'APP_START_CHECK') final int? appStartCheck,
      final Clinic? clinic}) = _$_Appointment;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$_Appointment.fromJson;

  @override
  @JsonKey(name: 'APPT_NUMBER')
  String? get apptNumber;
  @override
  @JsonKey(name: 'CLINIC_CODE')
  String? get clinicCode;
  @override
  @JsonKey(name: 'TYPE')
  String? get type;
  @override
  @JsonKey(name: 'HOSPITAL_NO')
  String? get hospitalNo;
  @override
  @JsonKey(name: 'EPISODE_NO')
  String? get episodeNo;
  @override
  @JsonKey(name: 'WL_ENTRY_NO')
  dynamic get wlEntryNo;
  @override
  @JsonKey(name: 'OPERATOR1_TO_SEE')
  Operator? get operator1ToSee;
  @override
  @JsonKey(name: 'OP1_TX_AREA')
  String? get op1TxArea;
  @override
  @JsonKey(name: 'OPERATOR2_TO_SEE')
  dynamic get operator2ToSee;
  @override
  @JsonKey(name: 'OP2_TX_AREA')
  dynamic get op2TxArea;
  @override
  @JsonKey(name: 'SUPERVISOR_TO_SEE')
  Operator? get supervisorToSee;
  @override
  @JsonKey(name: 'TIME_START_TO_SEE')
  String? get timeStartToSee;
  @override
  @JsonKey(name: 'TIME_STOP_TO_SEE')
  String? get timeStopToSee;
  @override
  @JsonKey(name: 'DURATION_TO_SEE')
  num? get durationToSee;
  @override
  @JsonKey(name: 'STATUS')
  String? get status;
  @override
  @JsonKey(name: 'TREATMENT_FORM')
  String? get treatmentForm;
  @override // @JsonKey(name: 'NOTES') dynamic notes,
// @JsonKey(name: 'CANC_SYSTEM_NOTE') dynamic cancSystemNote,
  @JsonKey(name: 'TIME_START_SEEN')
  String? get timeStartSeen;
  @override
  @JsonKey(name: 'TIME_STOP_SEEN')
  String? get timeStopSeen;
  @override
  @JsonKey(name: 'DURATION_SEEN')
  String? get durationSeen;
  @override
  @JsonKey(name: 'OPERATOR1_SEEN')
  String? get operator1Seen;
  @override // @JsonKey(name: 'OP1_TX_AREA_SEEN') String? op1TxAreaSeen,
  @JsonKey(name: 'OPERATOR2_SEEN')
  dynamic get operator2Seen;
  @override // @JsonKey(name: 'OP2_TX_AREA_SEEN') dynamic op2TxAreaSeen,
  @JsonKey(name: 'SUPERVISOR_SEEN')
  dynamic get supervisorSeen;
  @override
  @JsonKey(name: 'NOTES_POST_APPT')
  dynamic get notesPostAppt;
  @override // @JsonKey(name: 'CSSD_ORDERED') String? cssdOrdered,
//@JsonKey(name: 'CSSD_ORDERED_DATE') dynamic cssdOrderedDate,
//  @JsonKey(name: 'UPDATED_BY') String? updatedBy,
//  @JsonKey(name: 'UPDATED_DATE') String? updatedDate,
// @JsonKey(name: 'AUTH_BY') dynamic authBy,
// @JsonKey(name: 'DNA_INVOICED') String? dnaInvoiced,
// @JsonKey(name: 'DNA_INVOICED_VALUE') String? dnaInvoicedValue,
//  @JsonKey(name: 'AUTH_DATE') dynamic authDate,
  @JsonKey(name: 'MANDATORY_COMMENTS')
  dynamic get mandatoryComments;
  @override //  @JsonKey(name: 'PROFICIENCY') dynamic proficiency,
// @JsonKey(name: 'GRADE') dynamic grade,
//  @JsonKey(name: 'CONFIRMED') String? confirmed,
//  @JsonKey(name: 'DATE_CONFIRMED') dynamic dateConfirmed,
// @JsonKey(name: 'CHAIRNO') String? chairno,
// @JsonKey(name: 'STATUS_DETAILS') dynamic statusDetails,
// @JsonKey(name: 'NONCOFIRM_DETAILS') dynamic noncofirmDetails,
// @JsonKey(name: 'AUTH_OP1_BY') dynamic authOp1By,
// @JsonKey(name: 'AUTH_OP1_DATE') dynamic authOp1Date,
// @JsonKey(name: 'AUTH_OP2_BY') dynamic authOp2By,
// @JsonKey(name: 'AUTH_OP2_DATE') dynamic authOp2Date,
//  @JsonKey(name: 'NOT_SENT_DATE') dynamic notSentDate,
//  @JsonKey(name: 'NOT_SENT_BY') dynamic notSentBy,
//  @JsonKey(name: 'NOT_RECIEVED_DATE') dynamic notRecievedDate,
//  @JsonKey(name: 'NOT_RECEIVED_BY') dynamic notReceivedBy,
// @JsonKey(name: 'DATE_CREATED') String? dateCreated,
// @JsonKey(name: 'OPERATOR2_ROLE') dynamic operator2Role,
  @JsonKey(name: 'OPERATOR1_ROLE')
  String? get operator1Role;
  @override // @JsonKey(name: 'REMINDER_NUMBER') int? reminderNumber,
  @JsonKey(name: 'APP_START_CHECK')
  int? get appStartCheck;
  @override // @JsonKey(name: 'TREATMENT_CATEGORIES_CODE') dynamic treatmentCategoriesCode,
// @JsonKey(name: 'PN_VERSION') int? pnVersion,
// @JsonKey(name: 'RESCHEDULED_FROM') dynamic rescheduledFrom,
// @JsonKey(name: 'CREATED_BY') String? createdBy,
// @JsonKey(name: 'PAS_APPOINTMENT_ID') dynamic pasAppointmentId,
// @JsonKey(name: 'CHAIRS_IN_CLINIC_ID') int? chairsInClinicId,
//  @JsonKey(name: 'FINISHED_BY') dynamic finishedBy,
// @JsonKey(name: 'FINISHED_DATE') dynamic finishedDate,
// @JsonKey(name: 'GONE_BY') dynamic goneBy,
//@JsonKey(name: 'GONE_DATE') dynamic goneDate,
// @JsonKey(name: 'API_SESSION_CODE') dynamic apiSessionCode,
//@JsonKey(name: 'CG_INIT_CLINIC') dynamic cgInitClinic,
  Clinic? get clinic;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
