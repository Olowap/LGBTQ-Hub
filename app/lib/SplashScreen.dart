import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Duration of one blink cycle
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation and reverse it each time

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    // Simulate a future task, such as loading data or checking for authentication
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'Splash/splash.png'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white
                .withOpacity(0.8), // Adjust the opacity value as needed
          ),
          Center(
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'Splash/HUB.png', // Replace with your image asset path
                width: 800, // Adjust width as needed
                height: 800, // Adjust height as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}