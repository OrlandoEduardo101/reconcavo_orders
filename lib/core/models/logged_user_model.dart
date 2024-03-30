// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'user_type_model.dart';

class LoggedUserModel {
  final Session? session;
  final User? user;
  final UserTypeModel userType;
  final String name;
  final String phone;
  final String createdAt;
  final String updatedAt;

  const LoggedUserModel({
    required this.session,
    required this.user,
    required this.userType,
    required this.name,
    required this.phone,
    required this.createdAt,
    required this.updatedAt,
  });

  static LoggedUserModel empty() => LoggedUserModel(
      session: null, user: null, userType: UserTypeModel.empty(), name: '', phone: '', createdAt: '', updatedAt: '');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'session': session?.toMap(),
      // 'user': user?.toMap(),
      'user_type': userType.toMap(),
      'full_name': name,
      'phone_number': phone,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory LoggedUserModel.fromMap(Map<String, dynamic> map, Session? session, User? user) {
    return LoggedUserModel(
      session: session,
      user: user,
      userType: UserTypeModel.fromMap(map['user_type'] ?? {}),
      name: map['full_name'] ?? '',
      phone: map['phone_number'] ?? '',
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoggedUserModel.fromJson(String source, Session? session, User? user) => LoggedUserModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
        session,
        user,
      );
}

