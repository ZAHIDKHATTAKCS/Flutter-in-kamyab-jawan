// ignore: unused_import
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
            'Hi, Friends I am ZAHID KHATTAK, I am web Developer and also flutter developer and this is my first flutter app'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          //medaiquery.of is used for allocate all the space to a container
          width: MediaQuery.of(context).size.width,
          //height media query is used for allocate the height to a container and height/2 mean to allocate half of the place to hight
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      'Zahid Khattak',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.yellow),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      'Zahid Khattak',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      'Zahid Khattak',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
