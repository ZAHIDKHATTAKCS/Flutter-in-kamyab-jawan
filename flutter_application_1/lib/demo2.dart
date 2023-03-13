import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(
          backgroundColor: Colors.pink,
          child: ListTile(),
        ),
        appBar: AppBar(
          title: const Text(
            "Zahid khattak",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Row(
          children: [
            Column(children: [
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.yellow,
                width: 40,
                height: 50,
              ),
            ]),
          ],
        ));
  }
}
