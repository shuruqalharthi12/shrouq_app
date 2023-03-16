import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:shrouq_app/otp_view.dart';

import 'package:shrouq_app/repository/auth_repository.dart';
import 'package:http/http.dart' as http;
import '../../repository/token_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final AuthRepository repository;
  final TokenRepository tokenRepository;
  var headersList = {
    'accept': 'application/json',
    'content-type': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImNmNDhjNGU1OWFkZmI5N2JhMGVlMjY3OWM0N2YwMzI2YWFkYWE2ZDI1MDIyNjM4NDFlNjllMDc5Yjg5MTJkZWViM2M4MzUyYWU0ZGI3MjA3ZTQ0NWY5NDU2MmJmNjk1YmZkMzAxODJiMDljZjQ5ZWU3N2FlOTU2YmExMTVlZjllIiwiaWF0IjoxNjc0MTE1MDUyLCJleHAiOjMyNTE5OTUwNTJ9.hKF5DULx0-gGwMs4tkBCJxuqCisCqoBmoDRJM_yMZx0',
    'Content-Type': 'application/json'
  };
  var url = Uri.parse('https://apis.deewan.sa/verify/v2/verifications');

  OtpBloc(this.repository, this.tokenRepository)
      : super(const OtpState.initial()) {
    on<OtpEvent>((event, emit) async {
      await event.when(
        sendOtp: (phone) async {
          emit(const OtpState.loading());
          try {
            final checkCode = await sendOtp(phone);
            if (checkCode == null) {
              throw Exception("Oops, OTP send failed");
            }
            emit(OtpState.loaded(checkCode, phone));
          } catch (e) {
            emit(OtpState.error(e.toString()));
          }
        },
        verifyOtp: (otp, otpPassCode) async {
          emit(const OtpState.loading());
          try {
            final isVerified = await verifyOtp(otp, otpPassCode);

            if (isVerified) {
              emit(const OtpState.verified());
            } else {
              throw Exception("OTP verification failed");
            }
          } catch (e) {
            emit(OtpState.error(e.toString()));
          }
        },
      );
    });
  }

  Future<bool> verifyOtp(String otp, String otpPassCode) async {
    var body = {"checkCode": otp, "otpPasscode": otpPassCode};
    try {
      final response = await http.put(
        url,
        headers: headersList,
        body: json.encode(body),
      );
      final otpPasscodeStatus =
          json.decode(response.body)["data"]["otpPasscodeStatus"];
      if (response.statusCode == 200) {
        if (otpPasscodeStatus == 0) {
          return false;
        } else if (otpPasscodeStatus == 1) {
          return true;
        } else if (otpPasscodeStatus == 2) {
          return false;
        }
      }
      return false;
    } catch (e) {
      throw Exception("Failed to verify OTP: ${e.toString()}");
    }
  }

  Future<String> sendOtp(String phone) async {
    var fPhone = phone.startsWith('0') ? phone.replaceFirst("0", "", 0) : phone;
    print(phone);
    var body = {
      "channel": "SMS",
      "recipientIdentifier": "+966$fPhone",
      "otpCodeLength": "4",
      "otpCodeExpiry": "3"
    };
    try {
      final response = await http.post(
        url,
        headers: headersList,
        body: json.encode(body),
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        print(json.decode(response.body));
        final checkCode = json.decode(response.body)["data"]["checkCode"];
        return checkCode;
      } else {
        return "Oops, OTP send failed";
      }
    } catch (e) {
      return e.toString();
    }
  }
}
