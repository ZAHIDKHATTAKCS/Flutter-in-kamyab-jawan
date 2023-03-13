import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "7th One",
    ),
  );
}

class Seventh extends StatelessWidget {
  const Seventh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.green,
      ),
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Text("7th one"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(50),
        child: const Text(
          "This is the second hieghiest program",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
