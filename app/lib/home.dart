import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 147, 141, 141),
                  ),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 194, 200),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "Home/front.png", // Replace with your image asset path
                  width: 250, // Adjust width as needed
                  height: 250, // Adjust height as needed
                ),
              ),
              Center(
                child: Image.asset(
                  "Home/Rainbow.png", // Replace with your image asset path
                  width: 250, // Adjust width as needed
                  height: 250, // Adjust height as needed
                ),
              ),
              Text(
                'What is LGBTQ?',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              Center(
                child: Image.asset(
                  "Home/pride.png", // Replace with your image asset path
                  width: 250, // Adjust width as needed
                  height: 250, // Adjust height as needed
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Why Is Pride Month Celebrated in June?',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month, also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                'Pride Organizations',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
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
