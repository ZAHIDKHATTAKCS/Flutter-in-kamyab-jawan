import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "zahid khattak",
    ),
  );
}

class Nineth extends StatelessWidget {
  const Nineth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Container(),
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
      //floatactionbutton is used fot adding button in a page Note onpressed is required
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
        //mini true property is used for change the icon size to mini
        // mini: true,
      ),
    );
  }
}
