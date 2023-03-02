// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      apptNumber: json['APPT_NUMBER'] as String?,
      clinicCode: json['CLINIC_CODE'] as String?,
      type: json['TYPE'] as String?,
      hospitalNo: json['HOSPITAL_NO'] as String?,
      episodeNo: json['EPISODE_NO'] as String?,
      wlEntryNo: json['WL_ENTRY_NO'],
      operator1ToSee: json['OPERATOR1_TO_SEE'] == null
          ? null
          : Operator.fromJson(json['OPERATOR1_TO_SEE'] as Map<String, dynamic>),
      op1TxArea: json['OP1_TX_AREA'] as String?,
      operator2ToSee: json['OPERATOR2_TO_SEE'],
      op2TxArea: json['OP2_TX_AREA'],
      supervisorToSee: json['SUPERVISOR_TO_SEE'] == null
          ? null
          : Operator.fromJson(
              json['SUPERVISOR_TO_SEE'] as Map<String, dynamic>),
      timeStartToSee: json['TIME_START_TO_SEE'] as String?,
      timeStopToSee: json['TIME_STOP_TO_SEE'] as String?,
      durationToSee: json['DURATION_TO_SEE'] as String?,
      status: json['STATUS'] as String?,
      treatmentForm: json['TREATMENT_FORM'] as String?,
      timeStartSeen: json['TIME_START_SEEN'] as String?,
      timeStopSeen: json['TIME_STOP_SEEN'] as String?,
      durationSeen: json['DURATION_SEEN'] as String?,
      operator1Seen: json['OPERATOR1_SEEN'] as String?,
      operator2Seen: json['OPERATOR2_SEEN'],
      supervisorSeen: json['SUPERVISOR_SEEN'],
      notesPostAppt: json['NOTES_POST_APPT'],
      mandatoryComments: json['MANDATORY_COMMENTS'],
      operator1Role: json['OPERATOR1_ROLE'] as String?,
      appStartCheck: json['APP_START_CHECK'] as int?,
      clinic: json['clinic'] == null
          ? null
          : Clinic.fromJson(json['clinic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'APPT_NUMBER': instance.apptNumber,
      'CLINIC_CODE': instance.clinicCode,
      'TYPE': instance.type,
      'HOSPITAL_NO': instance.hospitalNo,
      'EPISODE_NO': instance.episodeNo,
      'WL_ENTRY_NO': instance.wlEntryNo,
      'OPERATOR1_TO_SEE': instance.operator1ToSee,
      'OP1_TX_AREA': instance.op1TxArea,
      'OPERATOR2_TO_SEE': instance.operator2ToSee,
      'OP2_TX_AREA': instance.op2TxArea,
      'SUPERVISOR_TO_SEE': instance.supervisorToSee,
      'TIME_START_TO_SEE': instance.timeStartToSee,
      'TIME_STOP_TO_SEE': instance.timeStopToSee,
      'DURATION_TO_SEE': instance.durationToSee,
      'STATUS': instance.status,
      'TREATMENT_FORM': instance.treatmentForm,
      'TIME_START_SEEN': instance.timeStartSeen,
      'TIME_STOP_SEEN': instance.timeStopSeen,
      'DURATION_SEEN': instance.durationSeen,
      'OPERATOR1_SEEN': instance.operator1Seen,
      'OPERATOR2_SEEN': instance.operator2Seen,
      'SUPERVISOR_SEEN': instance.supervisorSeen,
      'NOTES_POST_APPT': instance.notesPostAppt,
      'MANDATORY_COMMENTS': instance.mandatoryComments,
      'OPERATOR1_ROLE': instance.operator1Role,
      'APP_START_CHECK': instance.appStartCheck,
      'clinic': instance.clinic,
    };
