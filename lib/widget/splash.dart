import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'blink',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'it',
                    style: GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '\nBD Last Minute App',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
