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
      slotLength: json['SLOT_LENGTH'] as num?,
      slots: json['SLOTS'] as num?,
      seats: json['SEATS'] as num?,
      notes: json['NOTES'],
      status: json['STATUS'] as String?,
      capacity: json['CAPACITY'] as num?,
      avgCapacity: json['AVG_CAPACITY'] as num?,
      slotView: json['SLOT_VIEW'] as String?,
      appointments: json['APPOINTMENTS'] as num?,
      usedSlots: json['USED_SLOTS'] as num?,
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
      'SLOT_VIEW': instance.slotView,
      'APPOINTMENTS': instance.appointments,
      'USED_SLOTS': instance.usedSlots,
    };
