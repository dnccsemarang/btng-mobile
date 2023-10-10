import 'package:flutter/material.dart';

class LatihanButton extends StatefulWidget {
  const LatihanButton({super.key});

  @override
  State<LatihanButton> createState() => _LatihanButtonState();
}

class _LatihanButtonState extends State<LatihanButton> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: DropdownButton<String>(
                items: <DropdownMenuItem<String>>[
          DropdownMenuItem(
            child: Text("Dart"),
            value: "Dart",
          ),
          DropdownMenuItem(
            child: Text("Kotlin"),
            value: "kotlin",
          )
        ],
                value: language,
                hint: Text("select language"),
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                  });
                })));
  }
}
