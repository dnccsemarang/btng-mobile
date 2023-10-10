import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RubahFont extends StatelessWidget {
  const RubahFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          "BTNG DIVISI MOBILE",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      )),
    );
  }
}
