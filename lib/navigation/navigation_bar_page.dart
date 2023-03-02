// bottom navigation bar
import 'package:cached_network_image/cached_network_image.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shrouq_app/core/constants.dart';
import 'package:shrouq_app/home/home.dart';
import 'package:shrouq_app/user_notifications/view/notification_page.dart';
import '../appointment/view/appointment_page.dart';
import '../auth/bloc/bloc/authentication_bloc.dart';
import '../booking/view/book_appointment_page.dart';

import '../model/user/appointment.dart';
import '../model/user/user.dart';
import '../profile/profile_page.dart';
import '../repository/auth_repository.dart';


class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const NavigationBarPage());
  }
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    //verify(),
    HomePage(),
    AppointmentsPage(),
    RequestAppointment(),
    //BookAppointmentPage(),
    NotificationPage(),
    ProfilePage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: const Color(kPrimaryColor),
        style: TabStyle.fixedCircle,
        items: const [
          TabItem(
            icon: Icons.home_filled,
            activeIcon: Icons.home,
          ),
          TabItem(
            icon: Icons.calendar_month_outlined,
            activeIcon: Icons.calendar_month,
          ),
          TabItem(icon: Icons.local_hospital_outlined),
          TabItem(
              icon: Icons.notifications_none_outlined,
              activeIcon: Icons.notifications),
          TabItem(
            icon: Icons.person_outline_outlined,
            activeIcon: Icons.person,
          ),
        ],
        onTap: (int i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}

//------------------------------------------------------------------------------------------------------
//request an appointment
class RequestAppointment extends StatelessWidget {
  const RequestAppointment({super.key});
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(RepositoryProvider.of<AuthRepository>(context))
            ..add(UserEventFetchUser()),
      child: const RequestAppointmentView(),
    );
  }
}

class RequestAppointmentView extends StatelessWidget {
  const RequestAppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request an Appointment').tr(),
        backgroundColor: const Color(kPrimaryColor),
      ),
      body: Center(
        child: Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
          Text('Coming Soon...',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
              .tr(),
          Icon(Icons.hourglass_top),
        ]),
      ),
    );
  }
}

//------------------------------------------------------------------------------------------------------
//
// //Notifications
// class Notifications extends StatelessWidget {
//   const Notifications({super.key});
//   static Route<void> route() {
//     return MaterialPageRoute<void>(builder: (_) => const HomePage());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           UserBloc(RepositoryProvider.of<AuthRepository>(context))
//             ..add(UserEventFetchUser()),
//       child: NotificationsView(),
//     );
//   }
// }
//
// class NotificationsView extends StatelessWidget {
//   NotificationsView({Key? key}) : super(key: key);
//   // create a list of notifications
//   final notfications = [
//     {
//       'title': 'Appointment Request',
//       'body': 'You have a new appointment request',
//       'date': '2021-09-01',
//       'time': '10:00 AM',
//       'status': 'pending'
//      }
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Notifications'),
//           backgroundColor: const Color(kPrimaryColor),
//         ),
//         // create fake notifications cards with a list view amd a card widget also include date
//         body: ListView.builder(
//           itemCount: notfications.length,
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                 title: Text(notfications[index]['title']!),
//                 subtitle: Text(notfications[index]['body']!),
//                 trailing: Text(notfications[index]['date']!),
//                 // add a leading icon to the card
//                 leading: const Icon(Icons.notifications),
//               ),
//             );
//           },
//         ));
//   }
// }
