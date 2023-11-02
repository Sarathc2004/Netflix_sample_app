import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix1/utils/color_constant/color_constant.dart';
import 'package:netflix1/view/homescreen/Homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Homescreen(),
          ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstant.primaryblack,
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: Image(image: AssetImage("assets/images/Vector (1).png")),
          ),
        ],
      ),
    );
  }
}
