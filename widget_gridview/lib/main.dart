import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "GridView Demo",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          /// number of items in each row
          crossAxisCount: 2,

          /// spacing between rows
          mainAxisSpacing: 20,

          /// spacing between columns
          crossAxisSpacing: 20,
        ),

        /// padding around the grid
        padding: const EdgeInsets.all(8.0),

        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.purple[200],
            child: Text("${index + 1}"),
          );
        },
      ),
    );
  }
}
