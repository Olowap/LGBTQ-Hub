import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Developer {
  final String name;
  final int age;
  final String location;
  final String contactNumber;
  final String imageUrl;
  final String bio;

  Developer({
    required this.name,
    required this.age,
    required this.location,
    required this.contactNumber,
    required this.imageUrl,
    required this.bio,
  });
}

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  List<Developer> developers = [
    Developer(
      name: 'Joven C. Catilo',
      age: 21,
      location: 'Pallocan West, Batangas City',
      contactNumber: '+639203549508',
      imageUrl: 'Info/Joven.jpg',
      bio:
          'A Third Year BS Information Technology Major in Service Management from Batangas State University-TNEU Alangilan Campus. He is passionate in serving the community and charity works. He also play as Middle Blocker in School, Barangay and City tournaments. He always believe that "Everything happens for a reason."',
    ),
    Developer(
      name: 'Rizabel D. Lingon',
      age: 21,
      location: 'Sitio Dumuclay Ibaba, Batangas City',
      contactNumber: '+639561334540',
      imageUrl: 'Info/Riza.png',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
    Developer(
      name: 'John Aldrin L. Seva',
      age: 21,
      location: 'Pallocan West, Batangas City',
      contactNumber: '+63987-654-3210',
      imageUrl: 'Info/Joven.jpg',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
    Developer(
      name: 'Juan Paolo Martin V. Ramos',
      age: 21,
      location: 'Tingga Labac, Batangas City',
      contactNumber: '+63997-280-6864',
      imageUrl: 'Info/paolo.jpg',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
  ];

  void _showDeveloperDetails(Developer developer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 8), // Adjust top spacing here
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Rainbow border
                    Container(
                      width: 100, // Smaller size
                      height: 100, // Smaller size
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
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
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    // Developer image
                    CircleAvatar(
                      radius: 45, // Smaller size
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 43,
                        backgroundImage: AssetImage(developer.imageUrl),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  developer.name,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                _buildDeveloperDetail(
                  icon: Icons.person,
                  text: 'Name: ${developer.name}',
                ),
                _buildDeveloperDetail(
                  icon: Icons.cake,
                  text: 'Age: ${developer.age}',
                ),
                _buildDeveloperDetail(
                  icon: Icons.location_on,
                  text: 'Location: ${developer.location}',
                ),
                _buildDeveloperDetail(
                  icon: Icons.phone,
                  text: 'Contact: ${developer.contactNumber}',
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    developer.bio,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    child: Text(
                      "Close",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDeveloperDetail({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeveloperCard(Developer developer) {
    return GestureDetector(
      onTap: () => _showDeveloperDetails(developer),
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(8),
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Rainbow border
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
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
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 145,
                        height: 145,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Developer image
                  CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 71,
                      backgroundImage: AssetImage(developer.imageUrl),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  developer.name,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeveloperDetail_({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About Us',
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Colors.red,
                        Colors.orange,
                        Colors.yellow,
                        Colors.green,
                        Colors.blue,
                        Colors.indigo,
                        Colors.purple,
                        Colors.red,
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'We are a team of developers working together to create a Dictionary application. Our team is passionate about technology and innovation. We strive to deliver the best user experience through our applications.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 32),
              Text(
                'About the Project',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'In recent years, there has been a growing recognition of the need for greater understanding and acceptance of LGBTQ+ identities and experiences. One powerful tool to promote this understanding is an LGBTQ+ dictionary. Such a dictionary provides clear definitions and explanations of terms related to gender and sexual identities, helping to educate, foster respect, and create an inclusive environment. This essay will explore the importance of an LGBTQ+ dictionary, the steps involved in creating one, and the considerations necessary to ensure it is comprehensive and inclusive.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'Importance of an LGBTQ+ Dictionary',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'An LGBTQ+ dictionary is a vital resource for fostering understanding and acceptance. It serves as an educational tool for individuals who may not be familiar with the diverse range of identities and experiences within the LGBTQ+ community. By providing clear and accurate definitions, the dictionary can help dispel myths and misconceptions, reduce prejudice, and promote a more inclusive society. Additionally, it empowers LGBTQ+ individuals by validating their identities and experiences through language.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'Connection to Sustainable Development Goal 5',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Sustainable Development Goal (SDG) 5 aims to achieve gender equality and empower all women and girls. While SDG 5 primarily focuses on eliminating gender-based discrimination and violence, its principles of equality and empowerment are closely aligned with the goals of LGBTQ+ inclusivity. An LGBTQ+ dictionary contributes to SDG 5 by promoting gender equality and inclusivity for all gender identities and sexual orientations. By fostering understanding and acceptance, the dictionary helps to create a more equitable society where everyone, regardless of their gender or sexual identity, can live free from discrimination and violence.',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 32),
              Text(
                'Meet the Developers',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: developers
                      .map((developer) => _buildDeveloperCard(developer))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
