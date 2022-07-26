import 'package:flutter/material.dart';

import 'classes/classes.dart';

void main() {
  runApp(const MyApp());
}

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
  List<Train> train = [
    Train('Shatabdi',1232,'Delhi','Mumbai',50,300),
    Train('Kanyakumari Express',4321,'Kashmir','Kanyakumari',85,800),
    Train('Duranto',1353,'Gujarat','Eranakulam Jn',96,875),
    Train('Rajdhani',3210,'Kotttayam','Punjab',60,300),

  ];
  List<Customer> customer = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
