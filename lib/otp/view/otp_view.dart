import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/auth_repository.dart';
import '../../repository/token_repository.dart';
import '../bloc/otp_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      color: Colors.grey,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: BlocProvider(
        create: (_) => OtpBloc(
          const OtpState.initial(),
          AuthRepository(),
          TokenRepository(),
        )..add(OtpEvent.sendOtp('phone')),
        child: BlocConsumer<OtpBloc, OtpState>(
          listener: (context, state) {
            state.when(
              initial: () => null,
              loading: () => null,
              loaded: (checkCode, phone) => null,
              verified: () {
                // update token and laravel session
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('OTP verified successfully'),
                  ),
                );
              },
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              ),
              authorized: () => Navigator.of(context).pop(),
            );
          },
          builder: (context, state) {
            // build UI based on state here
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Enter the OTP sent to your phone',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Pinput(
                    length: 4,
                    onCompleted: (String pin) {
                      // submit OTP to bloc
                      state.when(
                        initial: () => null,
                        loading: () => null,
                        loaded: (checkCode, phone) {
                          BlocProvider.of<OtpBloc>(context).add(
                            OtpEvent.verifyOtp(checkCode, pin, context),
                          );
                        },
                        verified: () => null,
                        error: (message) => null,
                        authorized: () => null,
                      );
                    },
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                  ),
                  SizedBox(height: 20.0),
                  state.when(
                    initial: () => SizedBox.shrink(),
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (checkCode, phone) => Text(
                      'OTP sent to $phone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    verified: () => Text(
                      'OTP verified successfully',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    error: (message) => Text(
                      message,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    authorized: () {
                      return Text(
                        'OTP verified successfully',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
