import 'package:flutter/material.dart';

class MacamWidget extends StatelessWidget {
  const MacamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Macam Widget"),
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hari "),
                Text("ini "),
                Text("Kita "),
                Text("Belajar "),
                Text("Bersama")
              ],
            ),
          ),

        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Di "),
              Text("Acara "),
              Text("BTNG 2023 ")
          ]),
        ),

        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 250,
              height: 350,
              color: Colors.red,
            )
          ],
        )
        ],
      ),
    );
  }
}