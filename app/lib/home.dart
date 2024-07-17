import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink[400],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
            Center(
              child: Image.asset(
                "Rainbow.png", // Replace with your image asset path
                width: 250, // Adjust width as needed
                height: 250, // Adjust height as needed
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
                        'About LGBTQ',
                        style: GoogleFonts.poppins(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Why Is Pride Month Celebrated in June?',
                        style: GoogleFonts.poppins(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month, also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world.',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Pride Month commemorates years of struggle for civil rights and the ongoing pursuit of equal justice under the law for the lesbian, gay, bisexual, transgender, and queer community, as well as the accomplishments of LGBTQ individuals. But why is Pride Month celebrated in June? The organized pursuit of LGBTQ rights in the United States reaches back to at least 1924 and the founding of the Society of Human Rights in Chicago by Henry Gerber. But the event that catalyzed the LGBTQ rights movement came in June 1969 in New York City’s Greenwich Village, at the Stonewall Inn. In the early morning hours of June 28, police raided this popular gathering place for young members of the LGBTQ community—arresting the employees for selling liquor without a license, roughing up many of the patrons, and clearing the bar. Outside, the crowd that watched the bar’s patrons being herded into police vans became enraged. Previously witnesses to police harassment of members of the LGBTQ community had stood by passively, but this time the crowd jeered the police and threw coins and then bottles and debris at them, forcing the police to barricade themselves in the bar to await backup. Before long some 400 people were rioting. Although police reinforcements dispersed the crowd, riots waxed and waned outside the bar for the next five days, and these Stonewall riots (also called the Stonewall uprising) provided the spark that ignited the LGBTQ rights movement in the United States.',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Outside, the crowd that watched the bar’s patrons being herded into police vans became enraged. Previously witnesses to police harassment of members of the LGBTQ community had stood by passively, but this time the crowd jeered the police and threw coins and then bottles and debris at them, forcing the police to barricade themselves in the bar to await backup. Before long some 400 people were rioting. Although police reinforcements dispersed the crowd, riots waxed and waned outside the bar for the next five days, and these Stonewall riots (also called the Stonewall uprising) provided the spark that ignited the LGBTQ rights movement in the United States.',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
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
