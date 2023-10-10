import 'package:flutter/material.dart';

class ContainerDasar extends StatelessWidget {
  const ContainerDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 224, 239, 13),
          border: Border.all(color: Color.fromARGB(255, 21, 21, 21), width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Semangat"),
        ),
      )),
    );
  }
}
