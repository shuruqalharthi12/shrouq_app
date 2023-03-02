import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/di.dart';
import '../../model/auth/auth_exception.dart';
import '../../model/user/appointment.dart';
import '../../repository/appointment_repository.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  // access to repository via injection
  AppointmentRepository repository = inject<AppointmentRepository>();

  AppointmentBloc() : super(const AppointmentState.initial()) {
    on<AppointmentEvent>((event, emit) async {
      await event.whenOrNull(
        getAllAppointments: () async {
          emit(const AppointmentState.loading());
          final appointments = await repository.getAppointments();
          appointments.fold(
            (l) => emit(AppointmentState.error(l)),
            (r) => emit(AppointmentState.loaded(r)),
          );
        },
        getFutureAppointments: () async {
          emit(const AppointmentState.loading());
          final appointments = await repository.getFutureAppointments();
          appointments.fold(
            (l) => emit(AppointmentState.error(l)),
            (r) => emit(AppointmentState.loaded(r)),
          );
        },
        getPastAppointments: () async {
          emit(const AppointmentState.loading());
          final appointments = await repository.getPastAppointments();
          appointments.fold(
            (l) => emit(AppointmentState.error(l)),
            (r) => emit(AppointmentState.loaded(r)),
          );
        },
      );
    });
  }
}
