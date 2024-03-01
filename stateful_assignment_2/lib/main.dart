import 'package:flutter/material.dart';
import 'package:stateful_assignment_2/toggle_box.dart';
// import 'package:stateful_assignment_2/assignment2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Assignment2(),
      home: ToggleBox(),
    );
  }
}
