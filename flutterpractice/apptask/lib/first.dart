import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "myapp",
    ),
  );
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          width: 300,
          height: 600,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/1.jpg'),
          ),
        ),
      ),
    );
  }
}
