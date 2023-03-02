import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'bloc_observer.dart';
import 'core/theme.dart';
import 'login/view/login_page.dart';
import 'repository/auth_repository.dart';
import 'repository/token_repository.dart';
import 'splash/splash_page.dart';

import 'auth/bloc/bloc/authentication_bloc.dart';
import 'core/di.dart';
import 'firebase_options.dart';
import 'navigation/navigation_bar_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupInjection();

  Bloc.observer = BlocObserve();
  final fcmToken = await FirebaseMessaging.instance.getToken();
  debugPrint('FCM Token: $fcmToken');
  runApp(EasyLocalization(
    supportedLocales: [Locale('ar'), Locale('en')],
    path: 'assets/translations',
    fallbackLocale: Locale('ar'),
    startLocale: Locale('ar'),
    child: App(
      authenticationRepository: AuthRepository(),
      tokenRepository: TokenRepository(),
    ),
  ));
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.authenticationRepository,
    required this.tokenRepository,
  });

  final AuthRepository authenticationRepository;
  final TokenRepository tokenRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: authenticationRepository,
          tokenRepository: tokenRepository,
        )..add(const AuthenticationStatusChanged(
            AuthenticationStatus.authenticated)),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.kLight,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates
        ..add(FormBuilderLocalizations.delegate),
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  NavigationBarPage.route(),
                  (route) => false,
                );
                break;
              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
                break;
              case AuthenticationStatus.unknown:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
