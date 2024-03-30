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

  LoggedUserModel({
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
      // 'userType': userType.toMap(),
      'name': name,
      'phone': phone,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory LoggedUserModel.fromMap(Map<String, dynamic> map, Session? session, User? user) {
    return LoggedUserModel(
      session: session,
      user: user,
      userType: UserTypeModel.fromMap(map['user_type'] as Map<String, dynamic>),
      name: map['name'] as String,
      phone: map['phone'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoggedUserModel.fromJson(String source, Session? session, User? user) => LoggedUserModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
        session,
        user,
      );
}

/*
[
  {
    "user_id": "5196d0ec-e7cb-469f-9de3-6a8ee0df0b68",
    "user_type_id": 1,
    "full_name": "Orlando Eduardo Pereira",
    "phone_number": "+5575992619575",
    "created_at": "2024-03-27 19:51:48.237678+00",
    "updated_at": "2024-03-27 21:41:38.818814+00",
    "user_type": {
      "id": 1,
      "type_name": "administrador"
    }
  }
]*/