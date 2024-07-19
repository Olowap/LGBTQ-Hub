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
  bool _isExpanded = false;
  int _selectedDeveloperIndex = -1;

  List<Developer> developers = [
    Developer(
      name: 'Joven Catilo',
      age: 21,
      location: 'Pallocan West, Batangas City',
      contactNumber: '+639123456789',
      imageUrl: 'assets/developer1.jpg',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
    Developer(
      name: 'Rizabel Lingon',
      age: 21,
      location: 'Pallocan West, Batangas City',
      contactNumber: '+639987654321',
      imageUrl: 'assets/developer2.jpg',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
    Developer(
      name: 'John Aldrin L. Seva',
      age: 21,
      location: 'Pallocan West, Batangas City',
      contactNumber: '+639876543210',
      imageUrl: 'assets/developer3.jpg',
      bio:
          'A Third Year Collage of Batangas State University of Alangilan Campus Batangas City.',
    ),
  ];

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (!_isExpanded) {
        _selectedDeveloperIndex = -1;
      }
    });
  }

  void _selectDeveloper(int index) {
    setState(() {
      _selectedDeveloperIndex = index == _selectedDeveloperIndex ? -1 : index;
    });
  }

  Widget _buildDeveloperDetail({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.blue,
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
      appBar: AppBar(
        title: Text(
          'About',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 194, 200),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Us',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'We are a team of developers working together to create a Dictionary applications. Our team is passionate about technology and innovation. We strive to deliver the best user experience through our applications.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 32),
              Text(
                'About the Project',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'In recent years, there has been a growing recognition of the need for greater understanding and acceptance of LGBTQ+ identities and experiences. One powerful tool to promote this understanding is an LGBTQ+ dictionary. Such a dictionary provides clear definitions and explanations of terms related to gender and sexual identities, helping to educate, foster respect, and create an inclusive environment. This essay will explore the importance of an LGBTQ+ dictionary, the steps involved in creating one, and the considerations necessary to ensure it is comprehensive and inclusive.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 32),
              GestureDetector(
                onTap: _toggleExpand,
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      size: 30,
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Meet the Developers',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      _isExpanded ? Icons.expand_less : Icons.expand_more,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              if (_isExpanded)
                ExpansionPanelList(
                  elevation: 1,
                  expandedHeaderPadding: EdgeInsets.zero,
                  expansionCallback: (int panelIndex, bool isExpanded) {
                    _selectDeveloper(panelIndex);
                  },
                  children:
                      developers.map<ExpansionPanel>((Developer developer) {
                    int index = developers.indexOf(developer);
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(developer.imageUrl),
                          ),
                          title: Text(
                            developer.name,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDeveloperDetail(
                              icon: Icons.person,
                              text: 'Name: ${developer.name}',
                            ),
                            _buildDeveloperDetail(
                              icon: Icons.person,
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
                            Text(
                              developer.bio,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: _selectedDeveloperIndex == index,
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
