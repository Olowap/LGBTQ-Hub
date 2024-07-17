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
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Splash/splash.png'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.8), // Adjust the opacity value as needed
          ),
          Center(
            child: Image.asset(
              'Splash/HUB.png', // Replace with your image asset path
              width: 800,
              height: 800,
            ),
          ),
           
        ],
      ),
    );
  }
}
