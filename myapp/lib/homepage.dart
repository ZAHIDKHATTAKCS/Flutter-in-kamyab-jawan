// ignore: unused_import
import 'package:flutter/material.dart';

// ignore: unused_import
// import 'package:marquee/marquee.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(
          child: Text(
            'Hi, I am Zahid Khattak, This is my App',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            child: Image.asset('assets/images/1.jpg'),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 500,
              child: const Text(
                'Hi, friends I am Zahid Khattak. I am the student of Computer Science. I am Web Developer and also Flutter Developer and this is my first App I create it by using flutter.',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
