import 'dart:async';

import 'package:blinkit_clone/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool startAnimation = false;
  @override
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        startAnimation = true;
      });
    });

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: startAnimation ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: AnimatedScale(
                scale: startAnimation ? 1 : 0.4,
                duration: const Duration(seconds: 2),
                curve: Curves.easeOutBack,
                child: Text.rich(
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
