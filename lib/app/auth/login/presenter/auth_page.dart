import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:reconcavo_orders/app/auth/login/interactor/atoms/login_atom.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';
import 'package:reconcavo_orders/routes.dart';
import 'package:routefly/routefly.dart';

import '../interactor/actions/login_action.dart';
import '../interactor/models/logged_user_model.dart';
import 'pages/desktop_auth_page_widget.dart';
import 'pages/mobile_auth_page_widget.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onPressed() {
    signInAction(emailController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;

    LoggedUserModel counterValue = context.select(() => userState.value);

    if (counterValue.session != null) {
      Routefly.navigate(routePaths.home.presenter.home);
    }

    return Scaffold(
      body: isMobile
          ? MobileAuthPage(
              emailController: emailController,
              passwordController: passwordController,
              onPressed: onPressed,
            )
          : DesktopAuthPage(
              emailController: emailController,
              passwordController: passwordController,
              onPressed: onPressed,
            ),
    );
  }
}
