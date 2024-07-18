import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250), // Light background color
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0, // Flat app bar
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "Home/front.png", // Replace with your image asset path
                  width: 500, // Full width
                  height: 250, // Adjust height as needed
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                      "Home/Rainbow.png", // Replace with your image asset path
                      width: double.infinity, // Full width
                      height: 250, // Adjust height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                    Text(
                      'What is LGBTQ?',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 50, 50, 50),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color.fromARGB(255, 100, 100, 100),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color.fromARGB(255, 100, 100, 100),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                    child: Image.asset(
                    "Home/pride.png", // Replace with your image asset path
                    width: double.infinity, // Full width
                    height: 250, // Adjust height as needed
                    fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Why Is Pride Month Celebrated in June?',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 50, 50, 50),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month, also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color.fromARGB(255, 100, 100, 100),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Pride Organizations',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 50, 50, 50),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
