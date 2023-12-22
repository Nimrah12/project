import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA8akPV2N0EZ1U1JNetv9wtUlRRS1JrnSc",
            appId: "1:804459887300:web:9b12ebbbc4200ab525e791",
            messagingSenderId: "804459887300",
            projectId: "login-d17cb"));
  }

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login page',
      home: LoginPage(),
    );
  }
}
