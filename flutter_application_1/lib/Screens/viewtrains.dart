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
      body: SafeArea(
        child: Container(
            // mainAxisAlignment: MainAxisAlignment.start,
            child: ListView(
          shrinkWrap: true,
          children: [
            Traincard(i: 0),
            Traincard(i: 1),
            Traincard(i: 2),
            Traincard(i: 3),
          ],
        )),
      ),
    );
  }
}

class Traincard extends StatelessWidget {
  int i;
  Traincard({required this.i});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  train[i].tno.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                Text(
                  train[i].tname,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${train[i].tsource} - ${train[i].tdest}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "${train[i].seatsleft}seats left",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "${train[i].tfare}Rs",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
