import 'package:book_library_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuthService _authService = FirebaseAuthService();

  Future<void> signUp({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    await _authService.createUserWithEmailAndPassword(
      context: context,
      email: email,
      password: password,
    );
  }

  Future<void> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    await _authService.signInWithEmailAndPassword(
      context: context,
      email: email,
      password: password,
    );
  }

  Future<void> signOut({required BuildContext context}) async {
    await _authService.signOut(context: context);
  }
}
