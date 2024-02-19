import 'package:flutter/material.dart';
import 'package:book_library_app/models/book.dart';
import 'package:book_library_app/screens/book_display.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  const BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            color: Colors.grey[100],
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Text(
                book.title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  height: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      book.coverImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                DataTable(
                  columns: [
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Icon(Icons.person)),
                        DataCell(Text(book.author)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Icon(Icons.description)),
                        DataCell(
                          Container(
                            height: 150,
                            child: SingleChildScrollView(
                              child: Text(
                                book.description,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Icon(Icons.category)),
                        DataCell(Text(
                          book.category.toString().split('.').last,
                        )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDisplay(bookId: book.id),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFDE3163),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.menu_book),
                          SizedBox(width: 8),
                          Text('Read Book'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Adding to Favorites is in progress'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 8),
                          Text('Add to Favorites'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
