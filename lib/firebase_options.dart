// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCI1dEmCY8f_-djy3vHf2-izh9SG4NYob8',
    appId: '1:183226616065:web:70ccac4d870203e1deb300',
    messagingSenderId: '183226616065',
    projectId: 'trim-spot',
    authDomain: 'trim-spot.firebaseapp.com',
    storageBucket: 'trim-spot.appspot.com',
    measurementId: 'G-JSKBCHM0XY',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCI1dEmCY8f_-djy3vHf2-izh9SG4NYob8',
    appId: '1:183226616065:web:1f504032dfbad157deb300',
    messagingSenderId: '183226616065',
    projectId: 'trim-spot',
    authDomain: 'trim-spot.firebaseapp.com',
    storageBucket: 'trim-spot.appspot.com',
    measurementId: 'G-DM6PECR9LY',
  );
}