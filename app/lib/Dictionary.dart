import 'package:flutter/material.dart';

class Dictionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary'),
      ),
    body:const Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dictionary',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'A',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'input',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'B',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Input',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'C',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Input',
                      style: TextStyle(fontSize: 19),
                    ),

                       SizedBox(height: 16),
                    Text(
                      'D',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Input',
                      style: TextStyle(fontSize: 19),
                    ),
                    
                       SizedBox(height: 16),
                    Text(
                      'E',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Input',
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