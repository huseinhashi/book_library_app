import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/screens/book_display.dart';
import 'package:flutter/material.dart';

class PopularBooksSection extends StatelessWidget {
  final List<Book> books = getBooks();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            'Popular Books',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: books.map((book) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDisplay(bookId: book.id),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20000),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(book.coverImage),
                            fit: BoxFit.fitWidth,
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
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
