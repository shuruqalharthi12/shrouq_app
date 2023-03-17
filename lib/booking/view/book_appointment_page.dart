import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shrouq_app/core/constants.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

import '../bloc/bloc/book_appointment_bloc.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    // get today date Y-m-d
    final today = DateTime.now();
    final date = DateTime(today.year, today.month, today.day);

    return BlocProvider(
      create: (context) => BookAppointmentBloc()
        ..add(BookAppointmentEvent.fetchAppointment(date)),
      child: const BookAppointmentView(),
    );
  }
}

class BookAppointmentView extends StatefulWidget {
  const BookAppointmentView({super.key});

  @override
  State<BookAppointmentView> createState() => _BookAppointmentViewState();
}

class _BookAppointmentViewState extends State<BookAppointmentView> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('book_appointment'.tr()),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: WeeklyDatePicker(
              enableWeeknumberText: false,
              selectedDay: selectedDate, // DateTime
              backgroundColor: const Color(kPrimaryColor),
              selectedBackgroundColor: Colors.white,
              selectedDigitColor: const Color(kPrimaryColor),
              digitsColor: Colors.white,
              weekdayTextColor: Colors.white,
              changeDay: (value) {
                // DateTime
                context
                    .read<BookAppointmentBloc>()
                    .add(BookAppointmentEvent.fetchAppointment(value));
              }),
        ),
      ),
      body: BlocBuilder<BookAppointmentBloc, BookAppointmentState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (appointments) {
              if (appointments.isEmpty) {
                return Center(
                  child: const Text('No Available Appointments').tr(),
                );
              }
              return ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  final appointment = appointments[index];
                  final hour = appointment.startTime!.split(":")[0];
                  final min = appointment.startTime!.split(":")[1];
                  final bookAvaliableDate = DateTime(
                      DateTime.now().year,
                      selectedDate.month,
                      selectedDate.day,
                      int.parse(hour),
                      int.parse(min));

                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                              Icons.panorama_wide_angle_select_outlined),
                          title:
                              Text("clinic number:${appointment.clinicCode!}"),
                          subtitle: Text(
                            appointment.clinicDate!.substring(0, 10),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.date_range),
                          title: Text(''),
                          subtitle: Wrap(
                              alignment: WrapAlignment.spaceAround,
                              children: List.generate(
                                  (appointment.slots!).toInt(), (index) {
                                bookAvaliableDate
                                    .add(Duration(minutes: 30 * index));
                                return Padding(
                                    padding: EdgeInsets.all(2),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text("your appointment is booked").tr())
                                          );
                                        },
                                        child: Text(
                                            "${bookAvaliableDate.add(Duration(minutes: 30 * index)).hour < 10 ? '0${bookAvaliableDate.add(Duration(minutes: 30 * index)).hour}' : bookAvaliableDate.add(Duration(minutes: 30 * index)).hour}:${bookAvaliableDate.add(Duration(minutes: 30 * index)).minute < 10 ? '0${bookAvaliableDate.add(Duration(minutes: 30 * index)).minute}' : bookAvaliableDate.add(Duration(minutes: 30 * index)).minute} ")));
                              })),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            error: (message) => Text(message),
          );
        },
      ),
    );
  }
}
