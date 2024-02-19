import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/screens/about_screen.dart';
import 'package:book_library_app/screens/books_screen.dart';
import 'package:book_library_app/screens/dashscreen.dart';
// import 'package:book_library_app/screens/favorites_screen.dart';
import 'package:book_library_app/screens/search_sreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeContent(),
    BooksScreen(),
    // FavoritesScreen(),
    SearchScreen(allBooks: getBooks()),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Books'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'About'),
        ],
        iconSize: 30,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 5,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
