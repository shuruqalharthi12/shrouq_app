import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic.freezed.dart';
part 'clinic.g.dart';

@freezed
class Clinic with _$Clinic {
  factory Clinic({
    @JsonKey(name: 'CLINIC_CODE') String? clinicCode,
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
    @JsonKey(name: 'USED_SLOTS') num? usedSlots,

  }) = _Clinic;

  factory Clinic.fromJson(Map<String, dynamic> json) => _$ClinicFromJson(json);
}
