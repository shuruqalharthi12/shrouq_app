// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtxRTIa82EMyW1YciRXW0eBKVLhOssXXk',
    appId: '1:399971269403:android:5f4d9b98adc006a9d331be',
    messagingSenderId: '399971269403',
    projectId: 'salud-da75e',
    storageBucket: 'salud-da75e.appspot.com',
    // apiKey: 'AIzaSyCtxRTIa82EMyW1YciRXW0eBKVLhOssXXk',
    // appId: '1:399971269403:android:5f4d9b98adc006a9d331be',
    // messagingSenderId: '399971269403',
    // projectId: 'salud-da75e',
    // storageBucket: 'salud-da75e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjdv6lxTEfB4UEHSbDIvacEBjA23FomF4',
    appId: '1:399971269403:ios:c2ab1a1d81427b1ed331be',
    messagingSenderId: '399971269403',
    projectId: 'salud-da75e',
    storageBucket: 'salud-da75e.appspot.com',
    iosClientId:
        '399971269403-3nbkteg15rr7jbo0h6fajm29vsn88iuv.apps.googleusercontent.com',
    iosBundleId: 'com.cod.patient.services',
  );
}
