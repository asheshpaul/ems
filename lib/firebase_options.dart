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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCIgaypkDKQ45eeH0FG3aXQv7tYC4PGhj8',
    appId: '1:1023066079577:web:e03b8eeae1f872123d0c48',
    messagingSenderId: '1023066079577',
    projectId: 'ems-ri',
    authDomain: 'ems-ri.firebaseapp.com',
    storageBucket: 'ems-ri.firebasestorage.app',
    measurementId: 'G-GMMTQ5301W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhztd7SOABVav7MbKbzIwQPBhKMnhTSBc',
    appId: '1:1023066079577:android:57e163ae5ecdbf063d0c48',
    messagingSenderId: '1023066079577',
    projectId: 'ems-ri',
    storageBucket: 'ems-ri.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKDwMp6WOOMVK0eEJHgF-2R0qhq-xZ7d8',
    appId: '1:1023066079577:ios:8140147ad099ecf13d0c48',
    messagingSenderId: '1023066079577',
    projectId: 'ems-ri',
    storageBucket: 'ems-ri.firebasestorage.app',
    iosBundleId: 'com.example.ems',
  );
}
