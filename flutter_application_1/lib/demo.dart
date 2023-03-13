import 'package:flutter/material.dart';

class Myhome1 extends StatelessWidget {
  const Myhome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Zahid khattak",
          style: TextStyle(color: Colors.blue),
        ),
      ),

      body: Column(),
      drawer: const Drawer(
        backgroundColor: Colors.green,
        child: ListTile(),
      ),
    );
  }
}
