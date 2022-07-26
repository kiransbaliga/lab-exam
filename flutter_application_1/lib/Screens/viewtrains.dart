import 'package:flutter/material.dart';
import '../main.dart';
import '../classes/classes.dart';

class ViewTrain extends StatefulWidget {
  ViewTrain({Key? key}) : super(key: key);

  @override
  State<ViewTrain> createState() => _ViewTrainState();
}

class _ViewTrainState extends State<ViewTrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        train[0].tno.toString(),
                      ),
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
