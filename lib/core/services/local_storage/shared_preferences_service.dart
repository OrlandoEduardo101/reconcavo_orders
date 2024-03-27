import 'package:reconcavo_orders/core/design_system/theme/theme_app_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<void> saveThemeApp({required ThemeEnum theme}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme.name);
  }

  Future<String?> getThemeApp() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('theme');
  }
}
