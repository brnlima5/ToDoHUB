import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAwsEgLWmWCjDmlIV0JPDye1PxJzzznGxA",
            authDomain: "todo-hub-dc27f.firebaseapp.com",
            projectId: "todo-hub-dc27f",
            storageBucket: "todo-hub-dc27f.appspot.com",
            messagingSenderId: "379165254763",
            appId: "1:379165254763:web:1486cdc89c5565c8a07d2e"));
  } else {
    await Firebase.initializeApp();
  }
}
