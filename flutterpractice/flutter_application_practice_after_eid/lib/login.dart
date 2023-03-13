import 'package:flutter/material.dart';
import 'package:flutter_application_practice_after_eid/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(200),
        child: Column(
          children: const [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
                hintText: "Enter Username",
                suffixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Passwrod",
                hintText: "Enter your Password",
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            
          ],
        ),
      ),
    );
  }
}
