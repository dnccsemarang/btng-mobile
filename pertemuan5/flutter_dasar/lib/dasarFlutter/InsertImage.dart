import 'package:flutter/material.dart';

class InsertImage extends StatelessWidget {
  const InsertImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          Center(
        child: Image.asset("assets/images/bootsrap.png",
        width: 200,
        height: 100,
        
        ),
      ),

      Container(
        color: Colors.blue,
        width: 300,
        height: 300,
        child: Image.asset("assets/images/bootsrap.png",
        fit: BoxFit.cover,
        ),
      ),

      
        ],
      )
 )
      
         );
  }
}