import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shrouq_app/appointment/bloc/appointment_bloc.dart';

import '../../home/view/home_page.dart';
import 'appointments_tab.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppointmentBloc()
        ..add(const AppointmentEvent.getFutureAppointments()),
      child: const AppointmentsTab(),
    );
  }
}
