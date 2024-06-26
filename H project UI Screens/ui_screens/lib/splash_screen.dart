import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_screens/signup_screen.dart';

class SplashScreem extends StatefulWidget {
  const SplashScreem({super.key});

  @override
  State<SplashScreem> createState() => _SplashScreemState();
}

class _SplashScreemState extends State<SplashScreem> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: const Image(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          const Positioned(
            top: 250,
            left: 120,
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          const Positioned(
            top: 400,
            left: 80,
            child: Text(
              "HOPE FOR",
              style: TextStyle(
                  fontSize: 36,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 450,
            left: 70,
            child: Text(
              "HUMANITY",
              style: TextStyle(
                  fontSize: 36,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 600,
            left: 80,
            child: Text(
              "Welcome to",
              style: TextStyle(
                  fontSize: 29,
                  color: Color(0xff005014),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 650,
            left: 30,
            child: Text(
              "Hope For Humanity",
              style: TextStyle(
                  fontSize: 29,
                  color: Color(0xff005014),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
