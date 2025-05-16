import 'package:car_rental_app/Car_rental_relearn/car_page.dart';
import 'package:car_rental_app/views/details_page.dart';
import 'package:car_rental_app/views/food_practice.dart';
// ignore: unused_import
import 'package:car_rental_app/views/home_page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DetailsPage());
  }
}
