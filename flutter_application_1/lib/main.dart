import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/viewtrains.dart';

import 'Screens/booktrain.dart';
import 'classes/classes.dart';

void main() {
  runApp(const MyApp());
}

List<Train> train = [
  Train('Shatabdi', 1232, 'Delhi', 'Mumbai', 50, 300),
  Train('Kanyakumari Express', 4321, 'Kashmir', 'Kanyakumari', 85, 800),
  Train('Duranto', 1353, 'Gujarat', 'Eranakulam Jn', 96, 875),
  Train('Rajdhani', 3210, 'Kotttayam', 'Punjab', 60, 300),
];
List<Customer> customer = [];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: const Icon(Icons.book, color: Colors.black, size: 40),
              title: const Text('View Train',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: const Text('View Train Details',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              onTap: () {
                setState(() {
                  // Navigator.push(context, ViewTrain());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewTrain(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.monetization_on,
                  color: Colors.black, size: 40),
              title: const Text('Book Train',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: const Text('Book A Train',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  // Navigator.push(context, ViewTrain());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookTrain(),
                    ),
                  );
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
