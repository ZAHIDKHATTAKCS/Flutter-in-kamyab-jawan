import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Eight one page",
    ),
  );
}

class Eight extends StatelessWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Zahid khattak",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 400,
          color: Colors.black,
          child: const Text(
            "Kapil sharma",
            style: TextStyle(color: Colors.red, fontSize: 29),
          ),
        ),
      ),
    );
  }
}
