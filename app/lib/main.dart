import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splashscreen.dart';
import 'home.dart';
import 'dictionary.dart';
import 'info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LGBTQ+ Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => BottomNav(),
      },
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Dictionary(),
    Info(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Light background color
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'appbar/bgapp.png'), // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(158, 116, 112, 112),
        title: Image.asset(
          'appbar/app.png',
          height: 150.0,
          width: 99.0,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Pride Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 47, 139, 219),
        onTap: _onItemTapped,
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.poppins(),
      ),
    );
  }
}