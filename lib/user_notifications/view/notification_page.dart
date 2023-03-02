import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:ui' as ui;
import '../bloc/notification_bloc.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const NotificationPage());
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final date = DateTime(today.year, today.month, today.day);
    return BlocProvider(
      create: (context) =>
          NotificationBloc()..add(const NotificationEvent.fetchNotify()),
      child: const NotificationView(),
    );
  }
}

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notification').tr(),
        ),
        body: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (state) {
                return ListView.builder(
                    itemCount: state.userNotifications.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                              state.userNotifications[index].messageTitle!),
                          subtitle:
                              Text(state.userNotifications[index].messageBody!),
                        ),
                      );
                    });
              },
              error: (state) => Center(child: Text(state.message)));
        }));
  }
}
