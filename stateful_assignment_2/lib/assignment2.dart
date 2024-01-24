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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Box 1
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1Color ? Colors.red : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Box 1 Button
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1Color = true;
                        });
                      },
                      child: const Text("Color Box 1"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),

                // Box 2
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2Color ? Colors.amber : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Box 2 Button
                    ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            box2Color = true;
                          },
                        );
                      },
                      child: const Text("Color Box 2"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
