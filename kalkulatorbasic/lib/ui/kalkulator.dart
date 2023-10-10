import 'package:flutter/material.dart';

class kalkulator extends StatefulWidget {
  kalkulator({super.key});

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController angka1 = TextEditingController();

  TextEditingController angka2 = TextEditingController();

  TextEditingController hasil = TextEditingController();

  void Perhitungan(String tanda) {
    double angka1ne = double.parse(angka1.text);
    double angka2ne = double.parse(angka2.text);
    if (tanda == "+") {
      double hasile = angka1ne + angka2ne;
      hasil.text = hasile.toString();
    } else if (tanda == "-") {
      double hasile = angka1ne - angka2ne;
      hasil.text = hasile.toString();
    } else if (tanda == "*") {
      double hasile = angka1ne * angka2ne;
      hasil.text = hasile.toString();
    } else if (tanda == "/") {
      double hasile = angka1ne / angka2ne;
      hasil.text = hasile.toString();
    } else if (tanda == "%") {
      double hasile = angka1ne % angka2ne;
      hasil.text = hasile.toString();
    }
  }

  void dispose() {
    angka1.dispose();
    angka2.dispose();
    hasil.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 247, 204),
        appBar: AppBar(
          title: Text("Kalkulator Sederhana"),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    label: Text("angka 1"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    isDense: true),
                controller: angka1,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    label: Text("angka 2"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    isDense: true),
                controller: angka2,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  label: Text("hasil"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  isDense: true,
                ),
                controller: hasil,
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Perhitungan("+");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shadowColor: Colors.black),
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(width: 2),
                  ElevatedButton(
                      onPressed: () {
                        Perhitungan("-");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shadowColor: Colors.black),
                      child: Text("-", style: TextStyle(color: Colors.white))),
                  SizedBox(width: 2),
                  ElevatedButton(
                      onPressed: () {
                        Perhitungan("*");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shadowColor: Colors.black),
                      child: Text(
                        "*",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(width: 2),
                  ElevatedButton(
                      onPressed: () {
                        Perhitungan("/");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shadowColor: Colors.black),
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(width: 2),
                  ElevatedButton(
                      onPressed: () {
                        Perhitungan("%");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          shadowColor: Colors.black),
                      child: Text(
                        "%",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        )));
  }
}
