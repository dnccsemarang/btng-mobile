import 'package:flutter/material.dart';

class halamanDasar extends StatelessWidget {
  const halamanDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HalamanPertama"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
