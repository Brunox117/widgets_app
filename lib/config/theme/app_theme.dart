import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.pinkAccent,
  Colors.red,
  Colors.purpleAccent,
  Colors.deepPurple,
  Colors.orange
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater than zero'),
        assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() =>
      ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false
        )
        );
}