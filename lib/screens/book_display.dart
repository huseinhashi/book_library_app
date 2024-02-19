import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'package:book_library_app/models/book.dart';

class BookDisplay extends StatelessWidget {
  final String bookId;

  BookDisplay({required this.bookId});

  @override
  Widget build(BuildContext context) {
    // Find the corresponding book by ID
    Book? book = getBooks().firstWhere(
      (book) => book.id == bookId,
    );

    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        child: SfPdfViewer.asset(book?.pdfPath ?? ''),
      ),
    );
  }
}
