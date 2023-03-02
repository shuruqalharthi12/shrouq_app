import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:shrouq_app/otp_view.dart';
import 'package:shrouq_app/patient_register/view/patient_register_page.dart';

import '../../model/auth/auth_exception.dart';
import '../../model/token/token.dart';
import 'package:shrouq_app/repository/auth_repository.dart';
import 'package:http/http.dart' as http;
import '../../repository/token_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../view/otp_view.dart';

part 'otp_event.dart';
part 'otp_state.dart';

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
  String checkCode = '';

  OtpBloc(super.initialState, this.repository, this.tokenRepository);
  sendOtp(String phone, BuildContext context) async {
    var fPhone = phone.startsWith('0') ? phone.replaceFirst("0", "", 0) : phone;
    print(phone);
    var body = {
      "channel": "SMS",
      "recipientIdentifier": "+966$fPhone",
      "otpCodeLength": "4",
      "otpCodeExpiry": "3"
    };
    await http
        .post(
      url,
      headers: headersList,
      body: json.encode(body),
    )
        .then((res) {
      if (res.statusCode >= 200 && res.statusCode < 300) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("OTP has been sent"),
        ));
        print(json.decode(res.body));
        checkCode = json.decode(res.body)["data"]["checkCode"];
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    OtpScreen(checkCode: checkCode, phone: phone)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Oops, OTP send failed"),
        ));
      }
    });
  }

}
