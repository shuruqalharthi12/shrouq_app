// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Clinic _$$_ClinicFromJson(Map<String, dynamic> json) => _$_Clinic(
      clinicCode: json['CLINIC_CODE'] as String?,
      location: json['LOCATION'] as String?,
      clinicDate: json['CLINIC_DATE'] as String?,
      startTime: json['START_TIME'] as String?,
      stopTime: json['STOP_TIME'] as String?,
      clinicSession: json['CLINIC_SESSION'] as String?,
      leadOperator: json['LEAD_OPERATOR'],
      //slotLength: json['SLOT_LENGTH'] as String?,
     // slots: json['SLOTS'] as String?,
      //seats: json['SEATS'] as String?,
      notes: json['NOTES'],
      status: json['STATUS'] as String?,
      //capacity: json['CAPACITY'] as String?,
      //avgCapacity: json['AVG_CAPACITY'] as String?,
      //archive: json['ARCHIVE'] as String?,
      slotView: json['SLOT_VIEW'] as String?,
      //appointments: json['APPOINTMENTS'] as String?,
      //usedSlots: json['USED_SLOTS'] as String?,
      treatmentForm: json['TREATMENT_FORM'] as String?,
      apptType: json['APPT_TYPE'] as String?,
      //cssdOrdered: json['CSSD_ORDERED'] as String?,
     // reqChairBook: json['REQ_CHAIR_BOOK'] as int?,
      txArea: json['TX_AREA'],
      rotType: json['ROT_TYPE'],
      activityType: json['ACTIVITY_TYPE'],
      disciplineCode: json['DISCIPLINE_CODE'] as String?,
      placeOfService: json['PLACE_OF_SERVICE'],
      //allowStuBooking: json['ALLOW_STU_BOOKING'] as String?,
    );

Map<String, dynamic> _$$_ClinicToJson(_$_Clinic instance) => <String, dynamic>{
      'CLINIC_CODE': instance.clinicCode,
      'LOCATION': instance.location,
      'CLINIC_DATE': instance.clinicDate,
      'START_TIME': instance.startTime,
      'STOP_TIME': instance.stopTime,
      'CLINIC_SESSION': instance.clinicSession,
      'LEAD_OPERATOR': instance.leadOperator,
      'SLOT_LENGTH': instance.slotLength,
      'SLOTS': instance.slots,
      'SEATS': instance.seats,
      'NOTES': instance.notes,
      'STATUS': instance.status,
      'CAPACITY': instance.capacity,
      'AVG_CAPACITY': instance.avgCapacity,
      'ARCHIVE': instance.archive,
      'SLOT_VIEW': instance.slotView,
      'APPOINTMENTS': instance.appointments,
      'USED_SLOTS': instance.usedSlots,
      'TREATMENT_FORM': instance.treatmentForm,
      'APPT_TYPE': instance.apptType,
      'CSSD_ORDERED': instance.cssdOrdered,
      'REQ_CHAIR_BOOK': instance.reqChairBook,
      'TX_AREA': instance.txArea,
      'ROT_TYPE': instance.rotType,
      'ACTIVITY_TYPE': instance.activityType,
      'DISCIPLINE_CODE': instance.disciplineCode,
      'PLACE_OF_SERVICE': instance.placeOfService,
      'ALLOW_STU_BOOKING': instance.allowStuBooking,
    };
