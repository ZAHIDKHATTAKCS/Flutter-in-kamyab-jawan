// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // // ignore: unused_field
  // FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailtxt = TextEditingController();
  TextEditingController usernametxt = TextEditingController();
  TextEditingController passwordtxt = TextEditingController();
  TextEditingController phonetxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: emailtxt,
                //keyboard type is used for make an input field in the form and also also used for declare the type of the txt field
                keyboardType: TextInputType.emailAddress,
                //decoration widget is used for decorate the input field
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    //HintText is used for placeholder of the input field
                    hintText: "Enter Your Email",
                    //suffix is used for float the icon to the end of teh input field or start of the txt field
                    suffix: const Icon(Icons.email)),
                onChanged: (value) {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: passwordtxt,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Enter Password",
                suffix: const Icon(Icons.lock),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: usernametxt,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Enter your Name",
                suffix: const Icon(Icons.abc),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: phonetxt,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Enter your Phone Number",
                suffix: const Icon(Icons.phone),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              //     try {
              //       auth.signInWithEmailAndPassword(
              //           email: emailtxt.toString().trim(),
              //           password: passwordtxt.toString().trim());
              //     } catch (e) {
              //       // ignore: avoid_print
              //       print(e.toString());
              //     }
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const SignUp(),
              //       ),
              //     );
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
