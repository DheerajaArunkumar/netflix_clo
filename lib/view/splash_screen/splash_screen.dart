import 'dart:async';

import 'package:flutter/material.dart';

import 'package:netflix_clo/view/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const UserNameScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
                image: AssetImage("assets/image/logos_netflix.png"),
                height: 70),
          ),
          SizedBox(
            height: 15,
          ),
          CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
