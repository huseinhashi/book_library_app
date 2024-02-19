import 'package:book_library_app/screens/home_screen.dart';
import 'package:book_library_app/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void showSnackBar(
      BuildContext context, String message, Color backgroundColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            message,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        backgroundColor: backgroundColor,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> createUserWithEmailAndPassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      showSnackBar(context, 'Your Account is created', Colors.green);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar(context, 'The Password Provided is too weak', Colors.red);
      } else if (e.code == 'email-already-in-use') {
        showSnackBar(
            context, 'The account already exists for that email.', Colors.blue);
      }
    } catch (e) {
      showSnackBar(context, '$e', Colors.blue);
    }
  }

  Future<void> signInWithEmailAndPassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      showSnackBar(context, 'Signed In Successfully', Colors.green);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for email: $email');
        showSnackBar(context, 'No user found for that email.', Colors.red);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for user with email: $email');
        showSnackBar(
            context, 'Wrong password provided for that user.', Colors.red);
      } else {
        print('FirebaseAuthException: $e');
        showSnackBar(context, '$e', Colors.blue);
      }
    } catch (e) {
      print('Error during sign in: $e');
      showSnackBar(context, '$e', Colors.blue);
    }
  }

  Future<void> signOut({required BuildContext context}) async {
    await _auth.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }
}
