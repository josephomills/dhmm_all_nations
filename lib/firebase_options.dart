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
    apiKey: 'AIzaSyBp5t1T4uZJOU8MTvo8AIiSN-xF6L1SBuU',
    appId: '1:494879953020:android:ded3399366be02221639f9',
    messagingSenderId: '494879953020',
    projectId: 'dhmm-all-nations',
    storageBucket: 'dhmm-all-nations.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDW9P9yCRlfaViqRw-gBu8pVMAGa8whHSY',
    appId: '1:494879953020:ios:67b73c5ba398e6621639f9',
    messagingSenderId: '494879953020',
    projectId: 'dhmm-all-nations',
    storageBucket: 'dhmm-all-nations.appspot.com',
    androidClientId: '494879953020-h057f1nc0fpscfe7e1934ti836oa6nfr.apps.googleusercontent.com',
    iosClientId: '494879953020-12k8jjpp9iu26kfsnar7pvvir312i6sn.apps.googleusercontent.com',
    iosBundleId: 'com.dhmm190.allNations',
  );
}
