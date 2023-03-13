// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: unnecessary_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Home",
    ),
  );
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
