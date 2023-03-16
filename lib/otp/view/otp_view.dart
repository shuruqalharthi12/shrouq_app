import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/navigation_bar_page.dart';
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
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: BlocProvider(
          create: (_) => OtpBloc(
            RepositoryProvider.of<AuthRepository>(context),
            TokenRepository(),
          )..add(OtpEvent.sendOtp('0556791448')),
          child: BlocConsumer<OtpBloc, OtpState>(
            listener: (context, state) {
              state.when(
                initial: () => null,
                loading: () => null,
                loaded: (checkCode, phone) => null,
                verified: () {
                  // update token and laravel session
                  Navigator.pushAndRemoveUntil(context,   NavigationBarPage.route(), (route) => false);
                },
                error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                ),
                authorized: () => null,
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
                              OtpEvent.verifyOtp(checkCode, pin),
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
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
