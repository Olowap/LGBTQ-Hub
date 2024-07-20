import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final List<Map<String, String>> prideOrganizations = [
    {"image": "Home/MetroPride.jpg", "name": "Metro Manila Pride"},
    {"image": "Home/lys.png", "name": "LoveYourself"},
    {"image": "Home/UPBabaylan.png", "name": "UP Babaylan"},
    {"image": "Home/Galang.png", "name": "Galang"},
    {"image": "Home/Ladlad.jpg", "name": "Ladlad"},
    {"image": "Home/RainbowRights.png", "name": "Rainbow Rights"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 250, 250, 250), // Light background color
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "Home/front.png", // Replace with your image asset path
                  width: MediaQuery.of(context).size.width *
                      0.9, // Responsive width
                  height: MediaQuery.of(context).size.width *
                      0.5, // Responsive height
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
                    Center(
                      child: Image.asset(
                        "Home/Rainbow.png", // Replace with your image asset path
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width *
                            0.5, // Responsive height
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'What is LGBTQ+?',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'LGBTQIA+ stands for Lesbian, Gay, Bisexual, Transgender, queer (or sometimes questioning), intersex, asexual, and others.',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
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
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width *
                            0.5, // Responsive height
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Why Is Pride Month Celebrated in June?',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Colorful uplifting parades with floats and celebrities, joyous festivals, workshops, picnics, and parties are among the principal components of LGBTQ Pride Month, also called Gay Pride, which is celebrated in June in the United States and elsewhere around the world.',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
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
                  borderRadius: BorderRadius.circular(15),
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
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3 / 2,
                      ),
                      itemCount: prideOrganizations.length,
                      itemBuilder: (context, index) {
                        return Container(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RainbowBorderCircleAvatar(
                                radius: 30,
                                imagePath: prideOrganizations[index]['image']!,
                              ),
                              const SizedBox(height: 8),
                              Flexible(
                                child: Text(
                                  prideOrganizations[index]['name']!,
                                  style: GoogleFonts.poppins(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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

class RainbowBorderCircleAvatar extends StatelessWidget {
  final double radius;
  final String imagePath;

  const RainbowBorderCircleAvatar({
    Key? key,
    required this.radius,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: [
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.blue,
            Colors.indigo,
            Colors.purple,
            Colors.red,
          ],
          startAngle: 0.0,
          endAngle: 3.14 * 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          radius: radius - 3,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
