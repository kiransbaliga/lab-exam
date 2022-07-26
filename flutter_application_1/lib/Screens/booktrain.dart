import 'package:flutter/material.dart';
import '../classes/classes.dart';
import '../main.dart';

String cname = "";
int tid = 0;
int seat = 0;
double price = 0;

class BookTrain extends StatefulWidget {
  BookTrain({Key? key}) : super(key: key);

  @override
  State<BookTrain> createState() => _BookTrainState();
}

class _BookTrainState extends State<BookTrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          formqstn(
            data: "name",
            hint: "name",
            onchanged: (text) {
              setState(() {
                tid = int.parse(text);
              });
            },
          ),
          formqstn(
            data: "Train id",
            hint: "id",
            onchanged: (text) {
              // convert string to integer
              setState(() {
                tid = int.parse(text);
              });
            },
          ),
          formqstn(
            data: "seats",
            hint: "no of seats",
            onchanged: (text) {
              setState(() {
                seat = int.parse(text);
              });
            },
          ),
          formqstn(
            data: "fare",
            hint: "name",
            onchanged: (text) {
              setState(() {
                price = double.parse(text);
              });
            },
          ),
          Text("Total price: ${seat * price}")
        ],
      ),
    );
  }
}

class formqstn extends StatelessWidget {
  final String hint, data;
  final Function(String) onchanged;
  final TextEditingController? tec;
  const formqstn(
      {Key? key,
      required this.data,
      required this.hint,
      required this.onchanged,
      this.tec})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data,
            style: TextStyle(
              color: Color(0xff14D19D),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextField(
            controller: tec,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              hintText: hint,
            ),
            onChanged: onchanged,
          ),
        ],
      ),
    );
  }
}
