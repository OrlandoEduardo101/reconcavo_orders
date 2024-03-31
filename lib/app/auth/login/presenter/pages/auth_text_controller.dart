import 'package:flutter/material.dart';

class AuthTextController {
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();

  static void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}