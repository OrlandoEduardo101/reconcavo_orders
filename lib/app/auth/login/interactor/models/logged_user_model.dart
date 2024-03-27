import 'package:supabase_flutter/supabase_flutter.dart';

class LoggedUserModel {
  final Session? session;
  final User? user;

  LoggedUserModel({required this.session, required this.user});

  static LoggedUserModel empty() => LoggedUserModel(session: null, user: null);
}
