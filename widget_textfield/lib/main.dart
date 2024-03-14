import 'package:flutter/material.dart';
import 'package:widget_textfield/portfilo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Portfolio(),
      ),
    );
  }
}

class TextfieldUI extends StatefulWidget {
  const TextfieldUI({super.key});

  @override
  State<TextfieldUI> createState() => _TextfieldUIState();
}

class _TextfieldUIState extends State<TextfieldUI> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Widget : TextField",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade600,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          TextField(
            controller: _nameTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                  color: Colors.deepPurple,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            cursorColor: Colors.black,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              print("Value = $value");
            },
            onSubmitted: (value) {
              print("Data Submitted = $value");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("ADD"),
      ),
    );
  }
}
