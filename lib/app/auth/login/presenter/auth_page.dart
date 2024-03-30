import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:reconcavo_orders/app/app_action.dart';
import 'package:reconcavo_orders/app/app_atom.dart';
import 'package:reconcavo_orders/app/auth/login/interactor/atoms/login_atom.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';
import 'package:routefly/routefly.dart';

import '../../../../core/models/logged_user_model.dart';
import '../../../../routes.dart';
import '../interactor/actions/login_action.dart';
import 'pages/desktop_auth_page_widget.dart';
import 'pages/mobile_auth_page_widget.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onPressed() {
    signInAction(emailController.text, passwordController.text);
  }

  void updateGlobalUser(LoggedUserModel user) {
    setGlobalLoggedUser(user);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    // AppState appState0 = context.select(() => appState.value);

    LoggedUserModel loggedUser = context.select(() => userState.value);

    if (loggedUser.session != null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        updateGlobalUser(loggedUser);

        if (appState.value.loggedUser.userType.id == 1 || appState.value.loggedUser.userType.id == 2) {
          Routefly.navigate(routePaths.administrativeDashboard.presenter.administrativeDashboard);
        }
      });
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
