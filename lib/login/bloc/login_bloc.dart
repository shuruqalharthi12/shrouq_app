import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/auth/auth_exception.dart';
import '../../model/token/token.dart';
import '../../repository/auth_repository.dart';
import '../../repository/token_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository repository;
  final TokenRepository tokenRepository;

  LoginBloc(this.repository, this.tokenRepository)
      : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginButtonPressed) {
        emit(const LoginState.loading());
        // login

        final token = await repository.login(event.username, event.password);
        token.fold((l) => emit(LoginState.error(l)), (r) {
          // save token to shared preferences
          tokenRepository.saveToken(r);

          emit(const LoginState.authorized());
        });
      }
    });
  }
}
