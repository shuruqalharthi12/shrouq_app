import 'package:get_it/get_it.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:shrouq_app/repository/auth_repository.dart';
import 'package:shrouq_app/repository/dio_client.dart';

import '../repository/appointment_repository.dart';

final GetIt inject = GetIt.I;

Future<void> setupInjection() async {
  //Components
  inject.registerSingleton(DioClient());
  inject.registerSingleton(AuthRepository());
  // injection Appointmentsrepository
  inject.registerSingleton(AppointmentRepository());
  // init map lancher
  inject.registerSingleton(MapLauncher);
}
