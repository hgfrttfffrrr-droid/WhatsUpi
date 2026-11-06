
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'WhatsUpi is not configured for web.',
      );
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;

      default:
        throw UnsupportedError(
          'WhatsUpi is only configured for Android.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYaF5_P071fuRBjSXhoW6ui66g0xPiyAw',
    appId: '1:23210962658:android:a2e2899a6d91aa4b6eb8bb',
    messagingSenderId: '23210962658',
    projectId: 'whatsupi-68cca',
    storageBucket: 'whatsupi-68cca.firebasestorage.app',
  );
}
