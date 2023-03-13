import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_practice_after_eid/constant/Colors.dart';
// ignore: unused_import
import 'colors.dart';

const first = Color.fromARGB(300, 128, 130, 136);
const kgreen = Color.fromARGB(255, 41, 219, 25);
const klight = Color.fromARGB(255, 236, 246, 235);
void main(List<String> args) {}

class Startingmine extends StatelessWidget {
  const Startingmine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: first,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: klight,
              borderRadius: BorderRadius.circular(50),
            ),
            margin: const EdgeInsets.only(top: 40, left: 40),
            child: Image.asset('assets/images/woman.png'),
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 70),
                width: 300,
                height: 200,
                color: Colors.white,
                child: const Text(
                  'Buy Groceries Easilly With Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
