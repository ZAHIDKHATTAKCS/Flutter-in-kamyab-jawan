import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "zahid khattak",
    ),
  );
}

// ignore: must_be_immutable
class Tenth extends StatefulWidget {
  const Tenth({Key? key}) : super(key: key);
  @override
  State<Tenth> createState() => _TenthState();
  // TextEditingController name = TextEditingController();
}

class _TenthState extends State<Tenth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'My App',
          style: TextStyle(color: Colors.yellow),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/bg2.jpg',
                  fit: BoxFit.cover,
                  // width: 300,
                  // height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Fill the form to sign up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    // controller: name,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      //border outlineinputborder is used for giving border to the input field
                      border: OutlineInputBorder(),
                      //hinttext works same as placeholder in web
                      hintText: "Enter your Name",
                      //labeltext works same as label in web
                      labelText: "Name",
                      //prefix and suffix is used to float the icon to start or end
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter your Email",
                      suffixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your password",
                      labelText: "Password",
                      suffixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //this is another header
            DrawerHeader(
              curve: Curves.bounceIn,
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                // color: Colors.yellow,
                border: Border.all(color: Colors.black),
              ),
              child: Image.asset(
                'assets/images/pic.jpg',
                alignment: Alignment.center,
                //fit: BoxFit.fitWidth, this property is used for fiting the image in a box
                fit: BoxFit.cover,
              ),
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text('Zahid Khattak'),
            //   accountEmail: Text('Zahidkhattakcs@gmail.com'),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage('assets/images/pic.jpg'),
            //   ),
            //   decoration: BoxDecoration(
            //     color: Color.fromARGB(255, 61, 134, 168),
            //   ),
            // ),
            const ListTile(
              leading: Icon(Icons.person),
              iconColor: Colors.black,
              title: Text(
                'Account',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              iconColor: Colors.black,
              title: Text(
                'Email',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text('Zahidkhattakcs@gmail.com'),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      //floatingActionButtonLocation is used for change the location of the button
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      //floatactionbutton is used for adding button in a page Note onpressed is required
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
        //mini true property is used for change the icon size to mini
        // mini: true,
      ),
    );
  }
}
