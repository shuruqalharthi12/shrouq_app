import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shrouq_app/model/clinic/clinic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/di.dart';
import '../../../repository/appointment_repository.dart';
part 'book_appointment_event.dart';
part 'book_appointment_state.dart';

part 'book_appointment_bloc.freezed.dart';

class BookAppointmentBloc
    extends Bloc<BookAppointmentEvent, BookAppointmentState> {
  final repository = inject<AppointmentRepository>();
  BookAppointmentBloc() : super(const BookAppointmentState.initial()) {
    on<BookAppointmentEvent>((event, emit) async {
      await event.map(
        fetchAppointment: (e) async {
          emit(const BookAppointmentState.loading());
          final result = await repository.getAvailableAppointments(e.date);
          result.fold((l) => emit(BookAppointmentState.error(l.toString())),
              (r) => emit(BookAppointmentState.loaded(r)));
        },
      );
    });
  }
}
