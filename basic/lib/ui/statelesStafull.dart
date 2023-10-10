import 'package:flutter/material.dart';

class statelesStatefull extends StatelessWidget {
  const statelesStatefull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContohStatefull(),
        ],
      ),
    ));
  }
}

// buat widget untuk heading stateless
// class ContohStateless extends StatelessWidget {

//   const ContohStateless({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "Flutter",
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold
//       ),
//     );
//   }
// }

// buat widget untuk heading stateless dengan parameter yang tulisan dapat menyesuaikan inputan
class ContohStatelessParameter extends StatelessWidget {
  final String name; //buat property
  //masukan kedalam konstruktor
  const ContohStatelessParameter({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //panggil property diatas
      name,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

// //buat widget untuk heading statefull
class ContohStatefull extends StatefulWidget {
  const ContohStatefull({Key? key}) : super(key: key);

  @override
  State<ContohStatefull> createState() => _ContohStatefull();
}

class _ContohStatefull extends State<ContohStatefull> {
  double size = 14;
  Color warna = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Flutter", style: TextStyle(fontSize: size, color: warna)),
        ElevatedButton(
            child: const Text("Perbesar"),
            onPressed: () {
              setState(() {
                size = 32;
                warna = Colors.red;
              });
            }),
        ElevatedButton(
            onPressed: () {
              setState(() {
                size = 24;
                warna = Colors.blue;
              });
            },
            child: Text("Perkecil"))
      ],
    );
  }
}

//buat widget untuk heading statefull parameter
// class ContohStatefullParameter extends StatefulWidget {
//   //membuat parameter
//  final String name;
//  //membuat konstruktor
//     const ContohStatefullParameter({Key? key, required this.name}) : super(key: key);

//   @override
//   State<ContohStatefullParameter> createState() => _ContohStatefullParameter();
// }

// class _ContohStatefullParameter extends State<ContohStatefullParameter> {
//   double size = 14;
//   Color warna = Colors.black;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         //memanggil widget.name
//         Text(widget.name, style: TextStyle(fontSize: size,color: warna )),
//         ElevatedButton(
//           child: const Text("Perbesar"),
//           onPressed: () {
//             setState(() {
//               size = 32;
//               warna = Colors.red;
//             });
//         }),
//         ElevatedButton(onPressed: (){
//           setState(() {
//             size = 24;
//             warna = Colors.blue;
//           });
//         }, child: Text("Perkecil"))

//       ],
//     );
//   }
// }
