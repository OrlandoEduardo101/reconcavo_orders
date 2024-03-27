import 'package:flutter/material.dart';

abstract class IAuthPage {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final void Function()? onPressed;

  IAuthPage({required this.emailController, required this.passwordController, required this.onPressed,});
}
