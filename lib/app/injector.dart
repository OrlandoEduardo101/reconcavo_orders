import 'package:auto_injector/auto_injector.dart';
import 'package:reconcavo_orders/app/auth/login/interactor/repositories/i_login_repository.dart';
import 'package:reconcavo_orders/core/design_system/theme/theme_app_store.dart';
import 'package:reconcavo_orders/core/services/remote_storage/remote_storage_client.dart';
import 'package:reconcavo_orders/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uno/uno.dart';

import '../core/services/local_storage/shared_preferences_service.dart';
import 'administrative_dashboard/modules/stock/data/create_category_repository.dart';
import 'administrative_dashboard/modules/stock/interactor/repositories/i_create_category_repository.dart';
import 'auth/login/data/login_repository.dart';

final injector = AutoInjector(on: (i) {
  i.addSingleton<Uno>(Uno.new);
  i.addSingleton<ThemeAppStore>(ThemeAppStore.new);
  i.addSingleton<SharedPreferencesService>(SharedPreferencesService.new);
  i.addSingleton<SupabaseClient>(() => Supabase.instance.client);
  i.addSingleton<IRemoteStorageClient>(RemoteStorageClient.new);

  // Auth
  i.add<ILoginRepository>(LoginRepository.new);

  // Adm Stock
  i.addSingleton<ICreateCategoryRepository>(CreateCategoryRepository.new);
});
