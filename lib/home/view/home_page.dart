import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shrouq_app/auth/bloc/bloc/authentication_bloc.dart';
import 'package:shrouq_app/model/user/appointment.dart';
import 'package:shrouq_app/repository/auth_repository.dart';
import 'dart:ui' as ui;
import '../../core/constants.dart';
import '../bloc/user_bloc.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(RepositoryProvider.of<AuthRepository>(context))
            ..add(UserEventFetchUser()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // white app bar with black text and logo in the middle
      appBar: AppBar(
        backgroundColor: const Color(kPrimaryColor),
        title: Image.asset(
          'assets/image/logo.png',
          height: 60,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final maps = await MapLauncher.installedMaps;
          // show bottom sheet with maps
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: maps.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(maps[index].mapName),
                      onTap: () async {
                        // close bottom sheet
                        Navigator.pop(context);
                        // open map
                        await maps[index].showMarker(
                          coords: Coords(24.7564807, 46.8590273),
                          title:
                              'Collage of Dentistry (COD) King Saud bin Abdulaziz University for Health Sciences KSAU-HS'
                                  .tr(),
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
        backgroundColor: const Color(kAccent1),
        child: const Icon(Icons.place_rounded),
      ),
      body: BlocConsumer<UserBloc, UserState>(
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
              loaded: (user) {
                return Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                          MediaQuery.of(context).size.width,
                          (350 * 1.0)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: <Widget>[
                                Card(
                                  elevation: 3,
                                  margin: const EdgeInsets.only(top: 70.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 75),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.person,
                                                color: Color(kAccent1),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(
                                                "${user.profile!.forename1!} ${user.profile!.forename2!} ${user.profile!.surname!}",
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.perm_contact_cal_rounded,
                                                color: Color(kAccent1),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(
                                                user.profile!.ssn!,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.calendar_today,
                                                color: Color(kAccent1),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(
                                                user.profile!.birthDate!
                                                    .substring(0, 10),
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  left: 0,
                                  child: Column(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          showBottomSheet(
                                              backgroundColor: Colors.white,
                                              enableDrag: true,
                                              context: context,
                                              builder: (builder) {
                                                return RotatedBox(
                                                  quarterTurns: 45,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .height,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 50,
                                                          vertical: 50),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Stack(
                                                          fit: StackFit.expand,
                                                          children: [
                                                            CachedNetworkImage(
                                                                imageUrl:
                                                                    '${kBasedUrl.replaceAll('api/', '')}storage/images/${user.profile!.hospitalNo!}.png'),
                                                            Positioned(
                                                              right: 90,
                                                              bottom: 50,
                                                              child: QrImage(
                                                                data:
                                                                    " ${user.profile!.hospitalNo}",
                                                                version:
                                                                    QrVersions
                                                                        .auto,
                                                                size: 80,
                                                                //foregroundColor:
                                                                //  Colors.black,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: QrImage(
                                          padding: const EdgeInsets.all(15),
                                          backgroundColor:
                                              const Color(kAccent5),
                                          foregroundColor: Colors.black,
                                          data: user.profile!.hospitalNo
                                              .toString(),
                                          version: QrVersions.auto,
                                          size: 120,
                                        ),
                                      ),
                                      Text(
                                        user.profile!.hospitalNo.toString(),
                                        style: const TextStyle(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'MostRecentAppointment'.tr(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),

                          //list of appointments
                          if (user.appointments!.isNotEmpty)
                            Expanded(
                              child: ListView.builder(
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  Appointment appointment =
                                      user.appointments!.last;

                                  String date = appointment.clinic!.clinicDate!;
                                  String dateFormatted = date.substring(0, 10);
                                  DateTime dateObj =
                                      DateTime.parse(dateFormatted);
                                  // today date
                                  DateTime today = DateTime.now();
                                  // expandable card
                                  return Card(
                                    child: ExpansionTile(
                                      leading: statusIcon(appointment.status!),
                                      title: Text(
                                        '${appointment.clinicCode?.toString().replaceAll(RegExp(r'^0+(?=.)'), '')}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      subtitle: Text(
                                        '$dateFormatted | ${stateString(appointment.status)}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                      ),
                                      children: <Widget>[
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
                                            appointment.operator1ToSee!.name ??
                                                'Unknown',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        if (appointment.clinic!.location! == 'CMD2' ||
                                            appointment.clinic!.location! ==
                                                'CMD3' ||
                                            appointment.clinic!.location! ==
                                                'CMD4' ||
                                            appointment.clinic!.location! ==
                                                'MSCR' ||
                                            appointment.clinic!.location! ==
                                                '0SP')
                                          Text(
                                            "Ground Floor".tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            textAlign: TextAlign.start,
                                          ),
                                        if (appointment.clinic!.location! == 'CFD2' ||
                                            appointment.clinic!.location! ==
                                                'CFD3' ||
                                            appointment.clinic!.location! ==
                                                'CFD4' ||
                                            appointment.clinic!.location! ==
                                                'FSCR' ||
                                            appointment.clinic!.location! ==
                                                '1SP')
                                          Text(
                                            "First Floor".tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            textAlign: TextAlign.start,
                                          ),
                                        const Divider(),
                                        ListTile(
                                          title: Text(
                                            appointment.supervisorToSee?.name ??
                                                'Unknown',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                          ),
                                        ),
                                        const Divider(),
                                        //
                                        if (appointment.status == 'A' &&
                                            dateObj.year == today.year &&
                                            dateObj.month == today.month &&
                                            dateObj.day == today.day)
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // rate here
                                                _launchURL();
                                              },
                                              child: Text('Rate Appointment'
                                                  .tr()
                                                  .toString()),
                                            ),
                                          ),
                                      ],
                                    ),
                                  );
                                  // return Card(
                                  //   child: ListTile(
                                  //     title: Text(
                                  //         'Appointment # : ${appointment.apptNumber}'),
                                  //     subtitle: Text(
                                  //         'Operator: ${appointment.operator1ToSee}\n Supervisor: ${appointment.supervisorToSee}\n Appointment Status: ${appointment.status}'),
                                  //   ),
                                  // );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              error: (error) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'You are logged in!',
                      ),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }

  void _launchURL() async {
    launch(
        'https://cod.ksau-hs.edu.sa/patients-experience-survey-in-cod-en/?key=DTqjNnqd&s=2');
  }

  String stateString(String? state) {
    switch (state) {
      case "A":
        return "Attended".tr();
      case "B":
        return ";.".tr();
      case "C":
        return "Canceled".tr();
      case "R":
        return "Rescheduled".tr();
      default:
        return "NotAttended".tr();
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(kAccentColor)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7972800, size.height * 0.3702400);
    path0.quadraticBezierTo(size.width * 0.8685400, size.height * 0.5210600,
        size.width * 1.7967000, size.height * 0.3689400);
    path0.lineTo(size.width * 1.7967000, size.height * -0.0304000);
    path0.lineTo(size.width * 0.7967000, size.height * -0.0304000);
    path0.quadraticBezierTo(size.width * 0.7922000, size.height * 0.2011000,
        size.width * 0.7972800, size.height * 0.3702400);
    path0.close();

    //canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 106, 203, 115)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, size.height * 0.41),
        Offset(size.width * 1.02, size.height * 0.20),
        [const Color(kPrimaryColor), const Color(kPrimaryColor)],
        [0.00, 1.00]);

    Path path1 = Path();
    path1.moveTo(size.width * -0.0211800, size.height * 0.4051200);
    path1.quadraticBezierTo(size.width * 0.4385200, size.height * 0.3117000,
        size.width * 1.0210800, size.height * 0.4038200);
    path1.lineTo(size.width * 1.0210800, size.height * -0.0123200);
    path1.lineTo(size.width * -0.0217800, size.height * -0.0123200);
    path1.quadraticBezierTo(size.width * -0.0264600, size.height * 0.2287600,
        size.width * -0.0211800, size.height * 0.4051200);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
