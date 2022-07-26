import 'package:flutter/material.dart';

class Train {
  String tname;
  int tno;
  String tsource;
  String tdest;
  int seatsleft;
  double tfare;
  Train(this.tname, this.tno, this.tsource, this.tdest, this.seatsleft,
      this.tfare);
}

class Customer {
  String name;
  int id;
  String email;
  int seats;
  double fare;
  Customer(this.name, this.id, this.email, this.seats, this.fare);
}
