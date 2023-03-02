import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/user/appointment.dart';
import '../appointment.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppointmentBloc, AppointmentState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.when(
            initial: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (appointments) {
              // user information card
              if (appointments.isEmpty) {
                debugPrint('the list of apps is ${appointments.length}');
                return Center(child: Text("No Upcoming Appointments".tr()));
              } else {
                return ListView.builder(
                  itemCount: appointments!.length,
                  itemBuilder: (context, index) {
                    Appointment appointment = appointments[index];

                    String date = appointment.clinic!.clinicDate!;
                    String dateFormatted = date.substring(0, 10);

                    // expandable card
                    return Card(
                      child: IgnorePointer(
                        ignoring: true,
                        child: ExpansionTile(
                          iconColor: Colors.transparent,
                          initiallyExpanded: true,
                          leading: statusIcon(appointment.status!),
                          title: Text(
                            '${appointment.clinicCode?.toString().replaceAll(RegExp(r'^0+(?=.)'), '')}',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          subtitle: Text(
                            '$dateFormatted | ${stateString(appointment.status)}',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          children: <Widget>[
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.person_outline_sharp,
                                color: Colors.grey.shade400,
                              ),
                              subtitle: Text(
                                  '${appointment.timeStartToSee} - ${appointment.timeStopToSee}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                        color: Colors.grey,
                                      )),
                              title: Text(
                                appointment.operator1ToSee!.name ?? 'Unknown',
                                style: Theme.of(context).textTheme.subtitle2,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Ink(
                              color: Colors.grey.shade200,
                              child: ListTile(
                                title: Text(
                                  appointment.supervisorToSee?.name ??
                                      'Unknown',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
            error: (error) {
              return error.when(
                serverError: () => const Center(
                  child: Text('Server Error'),
                ),
                internetConnectionUnavailable: () => const Center(
                  child: Text('No Internet Connection'),
                ),
                unauthorized: () => const Center(
                  child: Text('Unauthorized'),
                ),
                unknown: () => const Center(
                  child: Text('Unknown Error'),
                ),
                wrongEmailOrPass: () => const Center(
                  child: Text('Wrong Email or Password'),
                ),
              );
            });
      },
    );
  }

  String stateString(String? state) {
    switch (state) {
      case "A":
        return "Attended".tr();
      case "B":
        return "Booked".tr();
      case "C":
        return "Canceled".tr();
      case "R":
        return "Rescheduled".tr();
      case "P":
        return "Canceled by Operator".tr();
      case "D":
        return "D".tr();
      default:
        return "unknown".tr();
    }
  }

  // calendar icon depnding on the status of the appointment
  Icon statusIcon(String? state) {
    switch (state) {
      case "A":
        return Icon(
          Icons.calendar_today_outlined,
          color: Colors.green.shade900,
        );
      case "B":
        return Icon(
          Icons.calendar_today,
          color: Colors.blue.shade900,
        );
      case "C":
        return Icon(
          Icons.free_cancellation_rounded,
          color: Colors.red.shade900,
        );
      case "R":
        return Icon(
          Icons.edit_calendar_outlined,
          color: Colors.yellow.shade900,
        );
      default:
        return Icon(
          Icons.calendar_today,
          color: Colors.grey.shade900,
        );
    }
  }
}
