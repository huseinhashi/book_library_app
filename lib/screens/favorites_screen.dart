import 'package:flutter/material.dart';
import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/widgets/app_bar_section.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Book> books = getBooks();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarSection(title: 'Favorite Books'),
          Text(
            "Collection Of All Your Favorite Books",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return BookContainer(book: book);
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
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(book.coverImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                book.author,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
