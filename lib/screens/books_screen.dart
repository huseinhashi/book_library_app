import 'package:flutter/material.dart';
import 'package:book_library_app/widgets/app_bar_section.dart';
import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/screens/book_details_screen.dart';

class BooksScreen extends StatelessWidget {
  final List<Book> books = getBooks();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarSection(title: 'Books'),
          Text(
            'Read all Books Available In the library.',
            style: TextStyle(
                fontSize: 23,
                color: Colors.grey[800],
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32.0),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.7,
            ),
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailsScreen(book: book),
                    ),
                  );
                },
                child: BookContainer(book: book),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  final Book book;

  const BookContainer({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(book.coverImage),
                fit: BoxFit.fitHeight,
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
    );
  }
}
