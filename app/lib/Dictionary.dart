import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class Dictionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
         backgroundColor: Colors.pink[400],
      ),
    body:const Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

             Text(
                      'PRIDE UMBRELLA',
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Get to know more about the LGBTQIA+ community.',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 8),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),


              Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'B',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),




              Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'C',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),





              Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'D',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),



              Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'E',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
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