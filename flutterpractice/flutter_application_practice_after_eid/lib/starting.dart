// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'colors.dart';

const kgreen = Color.fromARGB(255, 41, 219, 25);
const klight = Color(0xFFe9f5e8);

class Starting extends StatelessWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: ClipPathOnBoard(),
            child: Container(
                color: klight,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/woman.png",
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            children: [
              Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        'Buy Grocier \n Easily with us',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Buy Grocier buijkdasj \n Easily with us',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Text(
                              'Get Start',
                            ),
                          ))
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
