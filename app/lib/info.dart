import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
         backgroundColor: Colors.pink[400],
      ),
    );
  }
}