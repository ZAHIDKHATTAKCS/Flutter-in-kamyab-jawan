import 'package:flutter/material.dart';

class Newpage extends StatelessWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Padding",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.camera_alt, color: Colors.green[500]),
                const Text('Alaram:'),
                const Text('25 min'),
              ],
            ),
            Column(children: [
              Icon(Icons.airplane_ticket, color: Colors.green[500]),
              const Text('Alaram:'),
              const Text('25 min to take off'),
            ]),
            Column(children: [
              Icon(Icons.abc, color: Colors.green[500]),
              const Text('ABC:'),
              const Text('Aalphabits'),
            ])
          ],
        ),
      ),
    );
  }
}
