import 'package:auto_injector/auto_injector.dart';
import 'package:reconcavo_orders/core/design_system/theme/theme_app_store.dart';
import 'package:uno/uno.dart';

import '../core/services/local_storage/shared_preferences_service.dart';

final injector = AutoInjector(on: (i) {
  i.addSingleton<Uno>(Uno.new);
  i.addSingleton<ThemeAppStore>(ThemeAppStore.new);
  i.addSingleton<SharedPreferencesService>(SharedPreferencesService.new);
});