import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dictionary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // Height of the app bar
        child: AppBar(
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('splash.png'), // Replace with your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.3), // Adjust the opacity value as needed
              ),
              Center(
                child: Text(
                  'Pride Dictionary',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 25),
              Center(
                child: Text(
                  'PRIDE UMBRELLA',
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Text(
                'Get to know more about the LGBTQIA+ community.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 35),
              SizedBox(height: 8),
              _buildDictionaryCard('Ally', 'input'),
              _buildDictionaryCard('Bayot', 'input'),
              _buildDictionaryCard('C.Tirona', 'input'),
              _buildDictionaryCard('Daga', 'input'),
              _buildDictionaryCard('Eme lang', 'input'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDictionaryCard(String title, String content) {
    return Center(
      child: Container(
        width: 300, // Adjust the width as needed
        child: Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  content,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
