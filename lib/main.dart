import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/Carlos_pic.jpg'),
            ),
            const Text(
              'Carlos Pimentel',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Create a division line
            SizedBox(
              height: 20.0,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+244 914 348 699',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'carlos.costa.pimentel@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
