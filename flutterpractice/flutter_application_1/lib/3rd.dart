// ignore: file_names
import 'package:flutter/material.dart' show AppBar, BuildContext, Key, MaterialApp, Scaffold, StatelessWidget, Text, Widget, runApp;

void main() {
  runApp(
    const MaterialApp(),
  );
}

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zahid Khattak"),
      ),
    );
  }
}
