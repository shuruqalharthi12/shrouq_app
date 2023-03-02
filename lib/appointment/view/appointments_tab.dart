import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shrouq_app/core/constants.dart';

import '../appointment.dart';
import 'previous_appointments.dart';
import 'upComing_appointment.dart';

class AppointmentsTab extends StatelessWidget {
  const AppointmentsTab({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AppointmentBloc>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(tr('Appointments')),
          bottom: TabBar(
            indicatorColor: Color(kAccent2),
            indicatorWeight: 4,
            onTap: (index) {
              if (index == 0) {
                bloc.add(const AppointmentEvent.getFutureAppointments());
              } else {
                bloc.add(const AppointmentEvent.getPastAppointments());
              }
            },
            labelStyle: Theme.of(context).textTheme.subtitle1,
            tabs: [
              Tab(
                text: 'Upcoming'.tr(),
              ),
              Tab(
                text: 'Previous'.tr(),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UpcomingAppointments(),
            PreviousAppointments(),
          ],
        ),
      ),
    );
  }
}
