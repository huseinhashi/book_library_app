import 'package:book_library_app/widgets/app_bar_section.dart';
import 'package:book_library_app/widgets/coming_soon_books_section.dart';
import 'package:book_library_app/widgets/popular_books_section.dart';
import 'package:book_library_app/widgets/what_we_have_section.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarSection(title: 'Welcome '),
          WhatWeHaveSection(),
          PopularBooksSection(),
          ComingSoonBooksSection(),
        ],
      ),
    );
  }
}
