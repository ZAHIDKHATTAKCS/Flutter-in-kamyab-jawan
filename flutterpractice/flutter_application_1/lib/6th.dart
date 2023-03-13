//Rows and columns

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class Sixth extends StatelessWidget {
  const Sixth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "This is 6th one for columns and rows",
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
      body: Row(
        //mainaxisalignmetn.center is used to float the row to the center
        // mainAxisAlignment: MainAxisAlignment.center,

        //mainaxisalignmetn.spacebetween property is used to give space between the row
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        // mainAxisAlignment: MainAxisAlignment.spaceAround, property is used to give space around all over the row
        // mainAxisAlignment: MainAxisAlignment.spaceAround,

        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, property is used for giving space to the all row evenly
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // crossAxisAlignment:CrossAxisAlignment.stretch , as we know that mainaxisalignment is used for the vertical direction of the row now same like that crossaxisalignment is used for the horizantal direction of the row so we can use more properties also like cors.center,top etc

        // crossAxisAlignment:CrossAxisAlignment.center , for the center

        // crossAxisAlignment:CrossAxisAlignment.start , for the start
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // it is used for stritching the row down and cover all the body

        children: [
          Container(
            // margin: const EdgeInsets.only(
            //   top: 10,
            //   left: 7,
            // ), this is margin property you can also given margin from all the sides
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            // margin: const EdgeInsets.only(
            //   top: 10,
            //   left: 7,
            // ),
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            // margin: const EdgeInsets.only(
            //   top: 10,
            //   left: 7,
            // ),
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            // margin: const EdgeInsets.only(
            //   top: 10,
            //   left: 7,
            // ),
            height: 100,
            width: 200,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
