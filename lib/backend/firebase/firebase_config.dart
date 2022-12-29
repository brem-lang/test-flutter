import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDYY9WpuWFpUjlSCOUVlTluirA-8NzGmPk",
            authDomain: "fluttertest-2366c.firebaseapp.com",
            projectId: "fluttertest-2366c",
            storageBucket: "fluttertest-2366c.appspot.com",
            messagingSenderId: "1047345569898",
            appId: "1:1047345569898:web:da55a11bc130c2ef36ea13"));
  } else {
    await Firebase.initializeApp();
  }
}
