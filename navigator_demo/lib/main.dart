import 'package:flutter/material.dart';
import 'package:navigator_demo/screens/screen1.dart';
import 'package:navigator_demo/screens/screen2.dart';
import 'package:navigator_demo/screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Demo"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Button 1
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Screen1();
                    },
                  ),
                );
              },
              child: const Text("Screen 1"),
            ),

            const SizedBox(height: 25),

            /// Button 2
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Screen2();
                    },
                  ),
                );
              },
              child: const Text("Screen 2"),
            ),

            const SizedBox(height: 25),

            /// Button 3
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Screen3();
                    },
                  ),
                );
              },
              child: const Text("Screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
