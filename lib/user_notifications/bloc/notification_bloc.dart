import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shrouq_app/model/user_notifications/user_notifications.dart';
import 'package:shrouq_app/repository/auth_repository.dart';

import '../../../core/di.dart';

part 'notification_event.dart';
part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final repository = inject<AuthRepository>();

  NotificationBloc() : super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      emit(const NotificationState.loading());
      final result = await repository.getNotification();
      result.fold((l) => emit(NotificationState.error(l.toString())),
          (r) => emit(NotificationState.loaded(r)));
    });
  }
}
