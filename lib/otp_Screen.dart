import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shrouq_app/navigation/navigation_bar_page.dart';

class Otp extends StatelessWidget {
  const Otp({
    Key? key,
    required this.otpController,
  }) : super(key: key);
  final TextEditingController otpController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          hintText: ('0'),
        ),
        onSaved: (value) {},
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.checkCode, required this.phone})
      : super(key: key);
  final String checkCode;
  final String phone;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  var headersList = {
    'accept': 'Aplication/json',
    'content-type': 'Application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImNmNDhjNGU1OWFkZmI5N2JhMGVlMjY3OWM0N2YwMzI2YWFkYWE2ZDI1MDIyNjM4NDFlNjllMDc5Yjg5MTJkZWViM2M4MzUyYWU0ZGI3MjA3ZTQ0NWY5NDU2MmJmNjk1YmZkMzAxODJiMDljZjQ5ZWU3N2FlOTU2YmExMTVlZjllIiwiaWF0IjoxNjc0MTE1MDUyLCJleHAiOjMyNTE5OTUwNTJ9.hKF5DULx0-gGwMs4tkBCJxuqCisCqoBmoDRJM_yMZx0',
    'Content-Type': 'application/json'
  };
  var url = Uri.parse('https://apis.deewan.sa/verify/v2/verifications');
  var otpPasscodeStatus;
  void checkOtp(
      {required String checkCode,
      required,
      required String otpPasscode}) async {
    var body = {"checkCode": checkCode, "otpPasscode": otpPasscode};
    await http
        .put(
      url,
      headers: headersList,
      body: json.encode(body),
    )
        .then((res) {
      print(res.statusCode);
      print(res.body);
      otpPasscodeStatus = json.decode(res.body)["data"]["otpPasscodeStatus"];

      if (res.statusCode == 200) {
        if (otpPasscodeStatus == 0) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("OTP is Expired"),
          ));
        } else if (otpPasscodeStatus == 1) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("OTP is verified"),
          ));
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NavigationBarPage()));
        } else if (otpPasscodeStatus == 2) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("OTP is Not mach"),
          ));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("problem "),
        ));
      }
    });
  }

  String otpController = "1234";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Icon(Icons.dialpad_rounded, size: 50),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Enter PIN",
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Otp(
                otpController: otp1Controller,
              ),
              Otp(
                otpController: otp2Controller,
              ),
              Otp(
                otpController: otp3Controller,
              ),
              Otp(
                otpController: otp4Controller,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          // const Text(
          //   "Rider can't find a pin",
          //   style: TextStyle(fontSize: 20),
          // ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () async {
              if (otp1Controller.text.trim() == "" ||
                  otp2Controller.text.trim() == "" ||
                  otp3Controller.text.trim() == "" ||
                  otp4Controller.text.trim() == "") {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    "Please fill pass code",
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.amber,
                ));
              } else {
                checkOtp(
                  checkCode: widget.checkCode,
                  otpPasscode: otp1Controller.text.trim() +
                      otp2Controller.text.trim() +
                      otp3Controller.text.trim() +
                      otp4Controller.text.trim(),
                );
              }
            },
            child: const Text(
              "Confirm",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
