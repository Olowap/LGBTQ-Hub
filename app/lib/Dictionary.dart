import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  List<String> _suggestions = [];

  final List<Map<String, String>> _dictionaryEntries = [
    {
      'title': 'Ally',
      'content':
          'Ally is a term used to describe a person who supports and stands up for the rights and dignity of LGBTQIA+ individuals.'
    },
    {
      'title': 'Bayot',
      'content':
          'Bayot is a Filipino term often used to refer to a gay man. It can be both empowering and derogatory, depending on the context.'
    },
    {'title': 'C.Tirona', 'content': 'C.Tirona Anak ni oni'},
    {
      'title': 'Daga',
      'content':
          'Daga is a Filipino term that can refer to a coward or someone who is afraid.'
    },
    {
      'title': 'Eme lang',
      'content':
          'Eme lang is a Filipino colloquial expression which means "just kidding" or "just joking".'
    },
  ];

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
                    image: AssetImage(
                        'splash.png'), // Replace with your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.black
                    .withOpacity(0.3), // Adjust the opacity value as needed
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                    _updateSuggestions();
                  });
                },
              ),
            ),
            const SizedBox(height: 35),
            ..._buildFilteredDictionaryCards(),
          ],
        ),
      ),
    );
  }

  void _updateSuggestions() {
    if (_searchQuery.isEmpty) {
      _suggestions.clear();
    } else {
      _suggestions = _dictionaryEntries
          .where(
              (entry) => entry['title']!.toLowerCase().contains(_searchQuery))
          .map((entry) => entry['title']!)
          .toList();
    }
  }

  List<Widget> _buildFilteredDictionaryCards() {
    List<Widget> filteredCards = [];
    for (var entry in _dictionaryEntries) {
      if (entry['title']!.toLowerCase().contains(_searchQuery) ||
          entry['content']!.toLowerCase().contains(_searchQuery)) {
        filteredCards.add(
            _buildDictionaryCard(context, entry['title']!, entry['content']!));
      }
    }
    return filteredCards;
  }

  Widget _buildDictionaryCard(
      BuildContext context, String title, String content) {
    return Center(
      child: Container(
        width: 300, // Adjust the width as needed
        child: Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            onTap: () {
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
                    content: Text(
                      content,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text(
                          'Close',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.pink,
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
            },
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: Dictionary(),
    ));
