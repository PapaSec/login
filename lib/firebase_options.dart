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
    apiKey: 'AIzaSyD0X0m-8W0B5VYBnMIO-k8lbKRTtCfTEd8',
    appId: '1:412444064094:web:dec35c858c3510df4df7cf',
    messagingSenderId: '412444064094',
    projectId: 'flutter-coffee-login',
    authDomain: 'flutter-coffee-login.firebaseapp.com',
    storageBucket: 'flutter-coffee-login.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-PiToYH3QYLSijs-DONOolWS3pcmNQvc',
    appId: '1:412444064094:android:68cd5e5348ed724b4df7cf',
    messagingSenderId: '412444064094',
    projectId: 'flutter-coffee-login',
    storageBucket: 'flutter-coffee-login.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrej6px6ovQCLweYwYJhFq5Q6nNrHGX6A',
    appId: '1:412444064094:ios:68a125e7c8482e384df7cf',
    messagingSenderId: '412444064094',
    projectId: 'flutter-coffee-login',
    storageBucket: 'flutter-coffee-login.appspot.com',
    iosClientId: '412444064094-ft0qck0gkp2f30r2krsebm23ul1p9bi6.apps.googleusercontent.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrej6px6ovQCLweYwYJhFq5Q6nNrHGX6A',
    appId: '1:412444064094:ios:1c37038cd82b096b4df7cf',
    messagingSenderId: '412444064094',
    projectId: 'flutter-coffee-login',
    storageBucket: 'flutter-coffee-login.appspot.com',
    iosClientId: '412444064094-3bs89a4dnfo2204gapeqf0pe9mrisll9.apps.googleusercontent.com',
    iosBundleId: 'com.example.login.RunnerTests',
  );
}