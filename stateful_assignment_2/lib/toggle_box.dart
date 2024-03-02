import 'package:flutter/material.dart';

class ToggleBox extends StatefulWidget {
  const ToggleBox({super.key});

  @override
  State<ToggleBox> createState() => _ToggleBoxState();
}

class _ToggleBoxState extends State<ToggleBox> {
  bool box1Color = false;
  bool box2Color = false;

  Color setBox1Color() {
    if (box1Color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  Color setBox2Color() {
    if (box2Color == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: const Text(
          "Toggle Box App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // First Column
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box1Color == false) {
                      box1Color = true;
                    } else {
                      box1Color = false;
                    }
                  });
                },
                child: const Text(
                  "ColorBox 1",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          // Second Column
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box2Color == false) {
                      box2Color = true;
                    } else {
                      box2Color = false;
                    }
                  });
                },
                child: const Text(
                  "ColorBox 2",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
