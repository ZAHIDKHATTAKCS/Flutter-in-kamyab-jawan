import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Practice",
    home: Practice(),
  ));
}

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My all practice",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors
                .red, //here we only color it for more decoration we should declare decoration property
            child: const Text(
              "Zahid",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Container(
            // color: Colors.blue,
            padding: const EdgeInsets.all(24),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              "Khattak",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Web & Application Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
