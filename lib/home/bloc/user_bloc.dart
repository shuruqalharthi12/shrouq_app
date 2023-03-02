import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shrouq_app/repository/auth_repository.dart';

import '../../../model/auth/auth_exception.dart';
import '../../../model/user/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthRepository repository;

  UserBloc(this.repository) : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      if (event is UserEventFetchUser) {
        emit(const UserState.loading());
        // fetch user
        final user = await repository.getPatientInfo();
        user.fold((l) => emit(UserState.error(l)), (r) {
          emit(UserState.loaded(r));
        });
      }
    });
  }
}
