import 'package:flutter/material.dart';
import 'package:pertemuan3_offline/pages/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'dncc@gmail.com',
                prefixIcon: Icon(
                  Icons.person,
                ),
                prefixIconColor: Colors.amber,
                suffixIcon: Icon(
                  Icons.person,
                ),
                suffixIconColor: Colors.green,
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                iconColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                //ketika textfield tidak di tekan
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                //ketika textfield ditekan
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                      2,
                    ),
                    right: Radius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
              },
              child: Text("Go To DetailScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
