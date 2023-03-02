// create login view
//import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
//import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shrouq_app/home/home.dart';
//import 'package:shrouq_app/otp_Screen.dart';
import 'package:shrouq_app/repository/auth_repository.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
//import 'package:http/http.dart' as http;
import '../../core/constants.dart';
import '../../home/view/home_page.dart';

import '../../repository/token_repository.dart';
import '../bloc/patient_register_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

//import 'package:url_launcher/url_launcher.dart';

class PatientRegisterPage extends StatelessWidget {
  const PatientRegisterPage({Key? key}) : super(key: key);
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const PatientRegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return const PatientRegisterView();
  }
}

class PatientRegisterView extends StatelessWidget {
  const PatientRegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: kToolbarHeight,
          alignment: Alignment.center,
          color: const Color(kAccent5).withOpacity(0.5),
          child: Text(
            "copyright \u{24B8} 2022.KSAU-HS.College of Dentistry".tr(),
            textAlign: TextAlign.center,
          )),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PatientRegisterBloc(
              RepositoryProvider.of<AuthRepository>(context),
              TokenRepository()),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PatientRegisterForm(),
          ),
        ),
      ),
    );
  }
}

class PatientRegisterForm extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  PatientRegisterForm({super.key});
  @override
  Widget build(BuildContext context) {
    // get bloc
    // final bloc = BlocProvider.of<LoginBloc>(context);
    return BlocListener<PatientRegisterBloc, PatientRegisterState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('something went wrong'),
              ),
            );
          },
          authorized: () {
            // go to home page
            Navigator.of(context).pushReplacement(HomePage.route());
          },
        );
      },
      child: BlocBuilder<PatientRegisterBloc, PatientRegisterState>(
        builder: (context, state) {
          return state.when(
              initial: () => buildPatientRegisterForm(context, _formKey),
              loading: () =>
                  buildPatientRegisterForm(context, _formKey, isLoading: true),
              authorized: () => buildPatientRegisterForm(context, _formKey),
              error: (error) => buildPatientRegisterForm(context, _formKey));
        },
      ),
    );
  }
}

callNumber() async {
  const number = '011 429 9999'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

Widget buildPatientRegisterForm(
    BuildContext context, GlobalKey<FormBuilderState> formKey,
    {bool isLoading = false}) {
  return SingleChildScrollView(
    child: FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Center(
          //   child: Text(
          //     "King Saud bin Abdulaziz\nUniversity for Health Sciences".tr(),
          //     textAlign: TextAlign.center,
          //     style: const TextStyle(
          //         fontSize: 12.0,
          //         color: Colors.black,
          //         fontWeight: FontWeight.w500),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/image/ksau.png",
            fit: BoxFit.contain,
            height: 130,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "College of Dentistry",
            style: TextStyle(
                fontSize: 25.0,
                color: Color(0xff2f774d),
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ).tr(),
          const SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            name: 'HOSPITAL_NO',
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.numbers), labelText: 'MRN'.tr()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            name: 'SSN',
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.perm_identity),
                labelText: 'National ID/ Iqama'.tr()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
              FormBuilderValidators.numeric(),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            name: 'TELEPHONE1',
            keyboardType: TextInputType.number,
            // 05 as mask
            /*  inputFormatters: [
              MaskTextInputFormatter(
                  mask: '05#-###-####',
                  filter: {"#": RegExp(r'[0-9]')},
                  type: MaskAutoCompletionType.lazy)
            ],*/
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                labelText: 'Phone Number'.tr()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
          //    FormBuilderValidators.minLength(10),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            name: 'password',
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: 'Set Password'.tr()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
            ]),
          ),
          const SizedBox(height: 20),
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2f774d),
                      minimumSize: const Size(250, 48)),
                  onPressed: () {
                    if (formKey.currentState!.saveAndValidate()) {
                      final HOSPITALNO =
                          formKey.currentState!.value['HOSPITAL_NO'];
                      final SSN = formKey.currentState!.value['SSN'];
                      final  TELEPHONE1 =
                          formKey.currentState!.value['TELEPHONE1'];
                      final password = formKey.currentState!.value['password'];
                      BlocProvider.of<PatientRegisterBloc>(context).add(
                        PatientRegisterButtonPressed(
                          HOSPITAL_NO: HOSPITALNO,
                          SSN: SSN,
                          //myContext: context,
                          TELEPHONE1: TELEPHONE1,
                          password: password,
                        ),
                      );
                    }
                  },
                  child: const Text('Register').tr(),
                ),
          TextButton.icon(
            icon: Icon(IconData(0xee78, fontFamily: 'MaterialIcons')),
            onPressed: () {
              callNumber();
              debugPrint("no Call");

              //Navigator.push(context, PatientRegisterPage.route());
            },
            label: Text(
              'For Help'.tr(),
              style: TextStyle(
                color: Color(0xff2f774d),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
