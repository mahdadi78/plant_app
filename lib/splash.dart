import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 30),
            child: InkWell(
              onTap: () {},
              child: Text(
                'بعدی',
                style: GoogleFonts.lalezar(fontSize: 21, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
