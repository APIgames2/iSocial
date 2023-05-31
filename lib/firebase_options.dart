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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAG2nSgeSjADTVexz0TigXPXyPTOm7UTgA',
    appId: '1:517965849045:web:ac601b7ff4b8ee475b5d5c',
    messagingSenderId: '517965849045',
    projectId: 'iprojet-cace3',
    authDomain: 'iprojet-cace3.firebaseapp.com',
    databaseURL: 'https://iprojet-cace3-default-rtdb.firebaseio.com',
    storageBucket: 'iprojet-cace3.appspot.com',
    measurementId: 'G-06FNFRXV0F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6vTvj_ZdmSK-cb8RXtzZtHgZySJjzXO8',
    appId: '1:517965849045:android:31630942c30b65e95b5d5c',
    messagingSenderId: '517965849045',
    projectId: 'iprojet-cace3',
    databaseURL: 'https://iprojet-cace3-default-rtdb.firebaseio.com',
    storageBucket: 'iprojet-cace3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFJkeYNOZOlmfrhEraDVHOVD9ARVFDnLU',
    appId: '1:517965849045:ios:9ec345d70a0bd7175b5d5c',
    messagingSenderId: '517965849045',
    projectId: 'iprojet-cace3',
    databaseURL: 'https://iprojet-cace3-default-rtdb.firebaseio.com',
    storageBucket: 'iprojet-cace3.appspot.com',
    iosClientId: '517965849045-jvdafhpvea16v2mjd6u4le7uiin9l104.apps.googleusercontent.com',
    iosBundleId: 'com.ipados.onechat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFJkeYNOZOlmfrhEraDVHOVD9ARVFDnLU',
    appId: '1:517965849045:ios:5d79448ec71266715b5d5c',
    messagingSenderId: '517965849045',
    projectId: 'iprojet-cace3',
    databaseURL: 'https://iprojet-cace3-default-rtdb.firebaseio.com',
    storageBucket: 'iprojet-cace3.appspot.com',
    iosClientId: '517965849045-pjgcn5rsnjacg0552t5gpivq0oa1ft52.apps.googleusercontent.com',
    iosBundleId: 'com.example.isocial.RunnerTests',
  );
}