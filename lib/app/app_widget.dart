import 'package:flutter/material.dart';
import 'package:reconcavo_orders/app/injector.dart';
import 'package:routefly/routefly.dart';

import '../core/design_system/theme/theme_app_state.dart';
import '../core/design_system/theme/theme_app_store.dart';
import '../core/design_system/theme/theme_data.dart';
import 'routes.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final themeStore = injector.get<ThemeAppStore>();

  @override
  Widget build(BuildContext context) {
    themeStore.getThemeApp();

    return ValueListenableBuilder<ThemeAppState>(
        valueListenable: themeStore,
        builder: (context, state, child) {
          return MaterialApp.router(
            title: 'Recôncavo pedidos',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state.theme == ThemeEnum.lightTheme ? ThemeMode.light : ThemeMode.dark,
            routerConfig: Routefly.routerConfig(
              routes: routes,
              // initialPath: routePaths.pages.app,
              initialPath: routePaths.auth.login,
            ),
          );
        });
  }
}
