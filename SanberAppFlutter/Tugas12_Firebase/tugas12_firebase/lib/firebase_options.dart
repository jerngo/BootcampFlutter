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
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyAHrmy1tijqWoeFksWe_U1fkF2C-kRWa28',
    appId: '1:260186198941:web:92b01d6aa0620c6edd9574',
    messagingSenderId: '260186198941',
    projectId: 'tugas12firebase',
    authDomain: 'tugas12firebase.firebaseapp.com',
    storageBucket: 'tugas12firebase.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKQ-hu9O0xsb3-WMO7c4QaUM2fhoczMJA',
    appId: '1:260186198941:android:65e8372815eec2d7dd9574',
    messagingSenderId: '260186198941',
    projectId: 'tugas12firebase',
    storageBucket: 'tugas12firebase.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC323NtQIl46PmTk4DgrlrTRhpJdGomK78',
    appId: '1:260186198941:ios:7599dbeb481e24e7dd9574',
    messagingSenderId: '260186198941',
    projectId: 'tugas12firebase',
    storageBucket: 'tugas12firebase.firebasestorage.app',
    iosBundleId: 'com.example.tugas12Firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC323NtQIl46PmTk4DgrlrTRhpJdGomK78',
    appId: '1:260186198941:ios:7599dbeb481e24e7dd9574',
    messagingSenderId: '260186198941',
    projectId: 'tugas12firebase',
    storageBucket: 'tugas12firebase.firebasestorage.app',
    iosBundleId: 'com.example.tugas12Firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAHrmy1tijqWoeFksWe_U1fkF2C-kRWa28',
    appId: '1:260186198941:web:1eaa9a378580ed7fdd9574',
    messagingSenderId: '260186198941',
    projectId: 'tugas12firebase',
    authDomain: 'tugas12firebase.firebaseapp.com',
    storageBucket: 'tugas12firebase.firebasestorage.app',
  );
}
