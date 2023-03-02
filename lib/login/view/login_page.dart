// create login view
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:shrouq_app/core/constants.dart';
import 'package:shrouq_app/repository/auth_repository.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shrouq_app/repository/dio_client.dart';
import 'package:shrouq_app/repository/token_repository.dart';
import '../../patient_register/view/patient_register_page.dart';
import '../bloc/login_bloc.dart';

// create bloc
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => LoginBloc(
              RepositoryProvider.of<AuthRepository>(context),
              TokenRepository()),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LoginForm(),
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: kToolbarHeight,
          alignment: Alignment.center,
          color: const Color(kAccent5).withOpacity(0.5),
          child: Text(
            "copyright \u{24B8} 2023.KSAU-HS.College of Dentistry".tr(),
            textAlign: TextAlign.center,
          )),
    );
  }
}

// create login form
class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    // get bloc
    // final bloc = BlocProvider.of<LoginBloc>(context);
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.toString()),
              ),
            );
          },
          authorized: () {},
        );
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return state.when(
              initial: () => buildLoginForm(context, _formKey),
              loading: () => buildLoginForm(context, _formKey, isLoading: true),
              authorized: () => buildLoginForm(context, _formKey),
              error: (error) => buildLoginForm(context, _formKey));
        },
      ),
    );
  }
}

Widget buildLoginForm(BuildContext context, GlobalKey<FormBuilderState> formKey,
    {bool isLoading = false}) {
  return SingleChildScrollView(
    child: FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //  Center(
          //   child: const Text(
          //     "King Saud bin Abdulaziz\nUniversity for Health Sciences",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //         fontSize: 15.0,
          //         color: Colors.black,
          //         fontWeight: FontWeight.w500),
          //   ).tr(),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
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
            name: 'username',
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: 'Username'.tr(),
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            name: 'password',
            //prefixIcon: const Icon(Icons.visibility_off),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock), labelText: 'Password'.tr()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
            ]),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.saveAndValidate()) {
                      final username = formKey.currentState!.value['username'];
                      final password = formKey.currentState!.value['password'];
                      BlocProvider.of<LoginBloc>(context).add(
                        LoginButtonPressed(
                          username: username,
                          password: password,
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Login'.tr().toUpperCase(),
                    ),
                  ),
                ),
          // you dont have account
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              debugPrint("register");

              Navigator.push(context, PatientRegisterPage.route());
            },
            child: Text(
              'Don\'t have an account? Sign Up'.tr(),
              style: TextStyle(color: Color(0xff2f774d)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, PatientRegisterPage.route());
            },
            child: Text(
              'Forgot password?'.tr(),
              style: TextStyle(color: Color(0xff2f774d)),
            ),
          ),
        ],
      ),
    ),
  );
}
