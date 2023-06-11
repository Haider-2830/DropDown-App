import 'dart:async';

import 'package:flutter/material.dart';

import 'OnlineDataFetching.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const FirstHomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple,
            Colors.red.shade700
          ])
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.white,
              size: 40,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome Screen',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
