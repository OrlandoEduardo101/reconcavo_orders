import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/app_widget.dart';
import 'app/injector.dart';
import 'env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Env.apiUrl,
    anonKey: Env.apiPassword,
  );

  injector.commit();
  runApp(
    RxRoot(
      child: AppWidget(),
    ),
  );
}
