import 'package:flutter/material.dart';

//forth one is for body
void main() {
  runApp(
    const MaterialApp(),
  );
}

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4rth one"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        color: Colors.blue,
        child: const Text("hi friends"),
      ),
    );
  }
}
