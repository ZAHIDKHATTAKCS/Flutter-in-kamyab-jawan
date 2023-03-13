// main widgets
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      // title: "5th one main widgets", // write the code in the main file to see this title
      color: Colors.pink,
    ),
  );
}

class Fifth extends StatelessWidget {
  const Fifth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5th one for the main widgets"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          // color: Colors.yellow, we can't use decoration if we already use color outside of the decoration so first we remove it by comment
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(
              60), //if we remove padding line the alignment line works to set it in the center
          alignment: Alignment.center,
          //there are more many properties of alignment you can see by alignment.

          // alignment: Alignment.centerRight

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 3,
                // offset: Offset(5,5), offset is used for give offset to the box
              )
            ],
            gradient: const LinearGradient(colors: [
              Colors.yellow,
              Colors.pink,
            ]),
          ),
          child: const Text(
            "I am a Box",
            style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
