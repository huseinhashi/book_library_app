import 'package:flutter/material.dart';
import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/screens/book_details_screen.dart';

class SearchScreen extends StatefulWidget {
  final List<Book> allBooks;

  const SearchScreen({Key? key, required this.allBooks}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Book> searchResults = [];
  String searchQuery = '';

  void searchBooks(String query) {
    setState(() {
      searchQuery = query;
      // Filter books based on the search query
      searchResults = widget.allBooks
          .where((book) =>
              book.title.toLowerCase().contains(query.toLowerCase()) ||
              book.author.toLowerCase().contains(query.toLowerCase()) ||
              getCategoryString(book.category)
                  .toLowerCase()
                  .contains(query.toLowerCase()))
          .toList();
    });
  }

  void navigateToBookDetails(Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsScreen(book: book),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Search Books',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          // Search input field
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: searchBooks,
              decoration: InputDecoration(
                labelText: 'Search by Title, Author, or Category',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
          ),
          // Search results
          if (searchQuery.isNotEmpty)
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 3, // Adjust the aspect ratio as needed
                ),
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  Book book = searchResults[index];
                  return GestureDetector(
                    onTap: () => navigateToBookDetails(book),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage(book.coverImage),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            book.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Author: ${book.author}',
                            style: TextStyle(fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          // Empty state when no search results
          if (searchQuery.isNotEmpty && searchResults.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'No results found.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
