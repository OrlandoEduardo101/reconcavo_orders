
import 'package:flutter/material.dart';
import 'package:reconcavo_orders/app/injector.dart';
import 'package:reconcavo_orders/core/services/local_storage/shared_preferences_service.dart';

import 'theme_app_state.dart';

class ThemeAppStore extends ValueNotifier<ThemeAppState> {
  final prefs = injector.get<SharedPreferencesService>();

  ThemeAppStore() : super(ThemeAppState.initState());

  Future<void> getThemeApp() async {
    final themePrefs = await prefs.getThemeApp();
    ThemeEnum theme;

    themePrefs == ThemeEnum.darkTheme.name
        ? theme = ThemeEnum.darkTheme
        : theme = ThemeEnum.lightTheme;

    changeTheme(theme);
  }

  void changeTheme(ThemeEnum theme) {
    value = ThemeAppState(theme: theme);
    prefs.saveThemeApp(theme: theme);
  }
}
