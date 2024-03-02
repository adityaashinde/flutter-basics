import 'package:flutter/material.dart';

class FlagApp extends StatelessWidget {
  const FlagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Indian Flag",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: const Color.fromARGB(255, 181, 218, 212),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 140),
                ),
                Container(
                  height: 410,
                  width: 5,
                  color: Colors.black,
                ),
              ],
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 140)),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.orange,
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.white,
                  child: Image.network(
                    "https://i.pinimg.com/originals/d6/c7/c8/d6c7c88c00561033998548475e8dfb15.jpg",
                  ),
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
