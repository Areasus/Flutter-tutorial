import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wscube/main.dart';
import 'package:wscube/main1.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(title: "Hello"),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   color: Colors.blue[300],
      //   child: Center(
      //     child: Image.asset('assets/images/vnrp.png'),
      //   ),
      // ),
      body: Center(
        child: AnimatedCrossFade(
          duration: Duration(seconds: 2),
          crossFadeState: CrossFadeState.showSecond,
          firstChild: Container(
            width: 300,
            height: 300,
          ),
          firstCurve: Curves.easeInCubic,
          secondChild: Image.asset(
            'assets/images/vnrp.png',
          ),
        ),
      ),
      // body: Center(
      //   child: Hero(
      //     tag: 'logi',
      //     child: Image.asset(
      //       'assets/images/vnrp.png',
      //       width: 300,
      //       height: 300,
      //     ),
      //   ),
      // ),
    );
  }
}
