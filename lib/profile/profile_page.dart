import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/bloc/bloc/authentication_bloc.dart';
import '../core/constants.dart';

import '../home/bloc/user_bloc.dart';
import '../repository/auth_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(RepositoryProvider.of<AuthRepository>(context))
            ..add(UserEventFetchUser()),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile').tr(),
        backgroundColor: const Color(kPrimaryColor),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.when(
              initial: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (user) {
                final profile = user.profile;
                // create profile card with user information
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // add  header with user name and image
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: const Color(kPrimaryColor),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: QrImage(
                              data: user.user.toString(),
                              version: QrVersions.auto,
                              size: 75,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${profile!.forename1!} ${profile.surname!}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                profile.hospitalNo!,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // add usercard from user information using cached network image
                    // add user information
                    Container(
                      height: 10,
                      color: const Color(kPrimaryColor),
                    ),
                    Container(
                      color: const Color(kPrimaryColor),
                      child: CachedNetworkImage(
                        imageUrl:
                            '${kBasedUrl.replaceAll('api/', '')}storage/images/${user.profile!.hospitalNo!}.png',
                        height: 200,
                      ),
                    ),
                    Container(
                      height: 10,
                      color: const Color(kPrimaryColor),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.grey.shade400,
                        ),
                        title: Text(
                          '${profile.telephone1}',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                            // check if M mean male, set icon based on gender
                            profile.sex!.toLowerCase() == 'm'
                                ? Icons.male_rounded
                                : Icons.female_rounded,
                            color: profile.sex!.toLowerCase() == 'm'
                                ? Colors.cyan
                                : Colors.pinkAccent),
                        title: Text(
                          // check if M mean male
                          profile.sex!.toLowerCase() == 'm'
                              ? 'Male'.tr()
                              : 'Female'.tr(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    // change language button
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.language,
                          color: Colors.grey.shade400,
                        ),
                        title: Text(
                          'Change Language',
                          style: Theme.of(context).textTheme.subtitle1,
                        ).tr(),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Change Language').tr(),
                                  content: const Text('Select Language').tr(),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text('English').tr(),
                                      onPressed: () {
                                        context.setLocale(const Locale('en'));
                                        // save language to shared preferences
                                        SharedPreferences.getInstance()
                                            .then((prefs) {
                                          prefs.setString('language', 'en');
                                        });
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text('Arabic').tr(),
                                      onPressed: () {
                                        context.setLocale(const Locale('ar'));
                                        // save language to shared preferences
                                        final prefs =
                                            SharedPreferences.getInstance();
                                        prefs.then((value) {
                                          value.setString('language', 'ar');
                                        });

                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                      // logout
                    ),
                    // logout button
                    Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.redAccent,
                        ),
                        title: Text(
                          'Logout'.tr(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ).tr(),
                        onTap: () {
                          // logout user
                          context
                              .read<AuthenticationBloc>()
                              .add(AuthenticationLogoutRequested());
                        },
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
}
