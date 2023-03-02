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
    @JsonKey(name: 'ALLOW_STU_BOOKING') String? allowStuBooking,
  }) = _Clinic;

  factory Clinic.fromJson(Map<String, dynamic> json) => _$ClinicFromJson(json);
}
