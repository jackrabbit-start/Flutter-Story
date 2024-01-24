import 'package:flutter/material.dart';
import 'package:study_u_and_i/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'parisienne',
            ),
            titleSmall: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
            displayLarge: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
            displayMedium: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          )),
      home: HomeScreen(),
    ),
  );
}
