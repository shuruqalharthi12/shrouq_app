// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      hospitalNo: json['HOSPITAL_NO'] as String?,
      forename1: json['FORENAME1'] as String?,
      forename2: json['FORENAME2'] as String?,
      maidenSurname: json['MAIDEN_SURNAME'] as String?,
      surname: json['SURNAME'] as String?,
      birthDate: json['BIRTH_DATE'] as String?,
      ssnType: json['SSN_TYPE'],
      ssn: json['SSN'] as String?,
      nationalityId: json['NATIONALITY_ID'],
      telephone1: json['TELEPHONE1'] as String?,
      sex: json['SEX'] as String?,
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'HOSPITAL_NO': instance.hospitalNo,
      'FORENAME1': instance.forename1,
      'FORENAME2': instance.forename2,
      'MAIDEN_SURNAME': instance.maidenSurname,
      'SURNAME': instance.surname,
      'BIRTH_DATE': instance.birthDate,
      'SSN_TYPE': instance.ssnType,
      'SSN': instance.ssn,
      'NATIONALITY_ID': instance.nationalityId,
      'TELEPHONE1': instance.telephone1,
      'SEX': instance.sex,
      'appointment': instance.appointment,
    };
