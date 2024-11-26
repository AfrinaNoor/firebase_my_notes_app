import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
      apiKey: 'AIzaSyAbZJ1xVPGBH7WIfRWEnNtPwQGOCXx-OAo',
      appId: '1:607542691730:android:399db7bd115f8da92fa34b',
      messagingSenderId: '607542691730',
      projectId: 'supernotes-50158',
      storageBucket: 'my-notes-d6eea.firebasestorage.app',
      databaseURL:
      'https://my-notes-d6eea-default-rtdb.firebaseio.com/');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyAbZJ1xVPGBH7WIfRWEnNtPwQGOCXx-OAo',
      appId: '1:607542691730:android:399db7bd115f8da92fa34b',
      messagingSenderId: '607542691730',
      projectId: 'supernotes-50158',
      storageBucket: 'my-notes-d6eea.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
      'https://my-notes-d6eea-default-rtdb.firebaseio.com/');
}