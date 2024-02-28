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
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        // height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 85,
              width: 250,
              color: Colors.orange,
            ),
            Container(
              height: 85,
              width: 250,
              color: Colors.white,
              child: Image.network(
                "https://i.pinimg.com/originals/d6/c7/c8/d6c7c88c00561033998548475e8dfb15.jpg",
              ),
            ),
            Container(
              height: 85,
              width: 250,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
