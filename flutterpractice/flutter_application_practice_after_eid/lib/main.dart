import 'package:flutter/material.dart';
// ignore: unused_import
import 'homepage.dart';
// ignore: unused_import
// import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
// import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'splash.dart';
// ignore: unused_import
import 'starting.dart';
// ignore: unused_import
import 'signup.dart';
// ignore: unused_import
import 'Secondpage.dart';
// ignore: unused_import
import 'startpage.dart';
import 'Api_call.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "After eid",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ApiCall(),
    );
  }
}
