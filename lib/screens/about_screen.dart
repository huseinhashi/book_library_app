import 'package:book_library_app/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutScreen extends StatelessWidget {
  final AuthController _controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/dalka.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Dalka Book Store',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Discover, explore, and cherish your favorite books in one place.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32.0),
          Text(
            'Developed by Group 13',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Contact: huseinarahman6@gmail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 32.0),
          Text(
            'Version: 1.0.0',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 32.0),
          const Text(
            'Thank you for using our app!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              _controller.signOut(context: context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              // primary: Colors.red,
              // onPrimary: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
