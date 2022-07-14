// @dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import '../my_Services/service.dart';

class MyService {
  static final MyService _instance = MyService._internal();
  final TextEditingController name1 = TextEditingController();

  // passes the instantiation to the _instance object
  factory MyService() => _instance;

  //initialize variables in here
  MyService._internal() {
    List hotelList2 = [];
    List hotelList3 = [];
  }

  List hotelList2 = [
    {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'assets/images/h2.jpeg',
      'price': 180,
    },
    {
      'title': 'Grand Blue Hotel',
      'place': 'Wembley, London',
      'distance': 4,
      'review': 26,
      'picture': 'assets/images/h3.jpeg',
      'price': 150,
    },
    {
      'title': 'Queen Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 56,
      'picture': 'assets/images/h4.jpeg',
      'price': 180,
    },
    {
      'title': 'King Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 76,
      'picture': 'assets/images/h5.jpeg',
      'price': 180,
    },
  ];

  List hotelList3 = [];

  //short getter for my variable

  List get myMap => hotelList2;
  List get myMap2 => hotelList3;

  //short setter for my variable
  // set setMyVariable(Pages value) => pages = value;

  void setMonMontant(List code) {
    this.hotelList2 = code as List;
  }

  void setMonMontant2(List code) {
    this.hotelList3 = code as List;
  }
}
