import 'dart:math';

import 'package:flutter/material.dart';

class Randompiker extends StatefulWidget {
  const Randompiker({super.key});

  @override
  State<Randompiker> createState() => _RandompikerState();
}

class _RandompikerState extends State<Randompiker> {
  int nomer = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
        title: Text("Random Piker Number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nomer Undian"),
            Text(nomer.toString()),
            FloatingActionButton(
              onPressed: () {
                int nomers = Random().nextInt(20);
                setState(() {
                  nomer = nomers;
                });
              },
              child: Icon(Icons.shuffle),
            )
          ],
        ),
      ),
    );
  }
}