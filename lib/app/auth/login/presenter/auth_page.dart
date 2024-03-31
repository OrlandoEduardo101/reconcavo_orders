import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:reconcavo_orders/app/app_action.dart';
import 'package:reconcavo_orders/app/app_atom.dart';
import 'package:reconcavo_orders/app/auth/login/interactor/atoms/login_atom.dart';
import 'package:reconcavo_orders/app/auth/login/presenter/pages/auth_text_controller.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';
import 'package:routefly/routefly.dart';

import '../../../../core/models/logged_user_model.dart';
import '../../../../routes.dart';
import '../interactor/actions/login_action.dart';
import 'pages/desktop_auth_page_widget.dart';
import 'pages/mobile_auth_page_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  void onPressed() {
    signInAction(AuthTextController.emailController.text, AuthTextController.passwordController.text);
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
          Routefly.navigate(routePaths.administrativeDashboard.modules.stock.presenter.stock);
        }
      });
    }

    return Scaffold(
      body: isMobile
          ? MobileAuthPage(
              emailController: AuthTextController.emailController,
              passwordController: AuthTextController.passwordController,
              onPressed: onPressed,
            )
          : DesktopAuthPage(
              emailController: AuthTextController.emailController,
              passwordController: AuthTextController.passwordController,
              onPressed: onPressed,
            ),
    );
  }
}
