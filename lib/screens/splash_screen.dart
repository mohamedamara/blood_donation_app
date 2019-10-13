import 'dart:async';

import 'package:blood_donation_app/screens/intro_screen_carousel.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroScreenCarousel(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [const Color(0xFFFF217A), const Color(0xFFFF4D4D)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  child: Center(
                    child: SplashScreenLogo(),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreenLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Text(
          "B",
          style: TextStyle(
            fontSize: 110,
            color: Colors.white,
            height: 0.6,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w800,
          ),
        ),
        const Text(
          "HERO",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
