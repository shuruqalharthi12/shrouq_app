import 'package:freezed_annotation/freezed_annotation.dart';

import 'appointment.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    @JsonKey(name: 'HOSPITAL_NO') String? hospitalNo,
    @JsonKey(name: 'FORENAME1') String? forename1,
    @JsonKey(name: 'FORENAME2') String? forename2,
    @JsonKey(name: 'MAIDEN_SURNAME') String? maidenSurname,
    @JsonKey(name: 'SURNAME') String? surname,
    @JsonKey(name: 'BIRTH_DATE') String? birthDate,
    @JsonKey(name: 'SSN_TYPE') dynamic ssnType,
    @JsonKey(name: 'SSN') String? ssn,
    @JsonKey(name: 'NATIONALITY_ID') dynamic nationalityId,
    @JsonKey(name: 'TELEPHONE1') String? telephone1,
    @JsonKey(name: 'SEX') String? sex,
    List<Appointment>? appointment,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
