import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a future task, such as loading data or checking for authentication
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
    Color.fromARGB(191, 244, 67, 54),
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,

        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      ),
      child: Center(
        child: Image.asset('HUB.png',
        width: 800,
        height: 800,
        ),
      ),
      ),
    );
  }
}