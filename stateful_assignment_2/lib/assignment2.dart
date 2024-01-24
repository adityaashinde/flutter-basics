import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Box"),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
