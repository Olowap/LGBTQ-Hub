import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 250, 250, 250), // Light background color
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
                      'What is LGBTQ+?',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showReadMoreDialog(
                          context,
                          'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                          'LGBTQIA+ More Info',
                        );
                      },
                      child: Text(
                        'Read More',
                        style: GoogleFonts.poppins(),
                      ),
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
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month, also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world.',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showReadMoreDialog(
                          context,
                          'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month,also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world. Pride Month commemorates years of struggle for civil rights and the ongoing pursuit of equal justice under the law for the lesbian, gay, bisexual, transgender, and queer community, as well as the accomplishments of LGBTQ individuals. But why is Pride Month celebrated in June? The organized pursuit of LGBTQ rights in the United States reaches back to at least 1924 and the founding of the Society of Human Rights in Chicago by Henry Gerber. But the event that catalyzed the LGBTQ rights movement came in June 1969 in New York City’s Greenwich Village, at the Stonewall Inn. In the early morning hours of June 28, police raided this popular gathering place for young members of the LGBTQ community—arresting the employees for selling liquor without a license, roughing up many of the patrons, and clearing the bar. Outside, the crowd that watched the bar’s patrons being herded into police vans became enraged. Previously witnesses to police harassment of members of the LGBTQ community had stood by passively, but this time the crowd jeered the police and threw coins and then bottles and debris at them, forcing the police to barricade themselves in the bar to await backup. Before long some 400 people were rioting. Although police reinforcements dispersed the crowd, riots waxed and waned outside the bar for the next five days, and these Stonewall riots (also called the Stonewall uprising) provided the spark that ignited the LGBTQ rights movement in the United States.',
                          'Why Is Pride Month Celebrated in June?',
                        );
                      },
                      child: Text(
                        'Read More',
                        style: GoogleFonts.poppins(),
                      ),
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
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showReadMoreDialog(
                          context,
                          'Here you can find more information about various Pride organizations and how they contribute to the LGBTQ+ community.',
                          'Pride Organizations',
                        );
                      },
                      child: Text(
                        'Read More',
                        style: GoogleFonts.poppins(),
                      ),
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

  void _showReadMoreDialog(BuildContext context, String content, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              content,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Close',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
