import 'package:freezed_annotation/freezed_annotation.dart';

import 'appointment.dart';
import 'profile.dart';
import 'user.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    User? user,
    List<Appointment>? appointments,
    Profile? profile,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
