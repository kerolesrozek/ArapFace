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
    apiKey: 'AIzaSyCmlEtTAuF1pnjd9PBT1NcHSDF36nH-caI',
    appId: '1:66302622492:web:824cf93f9970af45c158d9',
    messagingSenderId: '66302622492',
    projectId: 'arap-face',
    authDomain: 'arap-face.firebaseapp.com',
    storageBucket: 'arap-face.appspot.com',
    measurementId: 'G-LTKPBV6VQ5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCwrBSFYHP91TU7_2uJrmXGGZSfWqZfFA',
    appId: '1:66302622492:android:c9433906d596844fc158d9',
    messagingSenderId: '66302622492',
    projectId: 'arap-face',
    storageBucket: 'arap-face.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7igs01bL05LUtP5Tc-Hz7pjBwYVPR3ig',
    appId: '1:66302622492:ios:486349c10e99a60dc158d9',
    messagingSenderId: '66302622492',
    projectId: 'arap-face',
    storageBucket: 'arap-face.appspot.com',
    iosBundleId: 'com.example.arapface',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7igs01bL05LUtP5Tc-Hz7pjBwYVPR3ig',
    appId: '1:66302622492:ios:486349c10e99a60dc158d9',
    messagingSenderId: '66302622492',
    projectId: 'arap-face',
    storageBucket: 'arap-face.appspot.com',
    iosBundleId: 'com.example.arapface',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCmlEtTAuF1pnjd9PBT1NcHSDF36nH-caI',
    appId: '1:66302622492:web:822897ab0a203e16c158d9',
    messagingSenderId: '66302622492',
    projectId: 'arap-face',
    authDomain: 'arap-face.firebaseapp.com',
    storageBucket: 'arap-face.appspot.com',
    measurementId: 'G-KZ98F5CBNZ',
  );
}
