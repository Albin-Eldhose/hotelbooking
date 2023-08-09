import 'package:flutter/material.dart';
import 'package:hotelbooking/hotelbooking.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelBooking(),
    );
  }
}
