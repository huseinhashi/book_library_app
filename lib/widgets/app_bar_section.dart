import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  final String title;

  const AppBarSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 40, bottom: 20),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading:
            false, // Set this to false to remove the back arrow
        title: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
