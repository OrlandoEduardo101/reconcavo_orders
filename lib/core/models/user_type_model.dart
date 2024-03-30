// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserTypeModel {
  final int id;
  final String name;

  UserTypeModel({required this.id, required this.name});
  static UserTypeModel empty() => UserTypeModel(id: -1, name: 'undefined');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory UserTypeModel.fromMap(Map<String, dynamic> map) {
    return UserTypeModel(
      id: map['id'] as int,
      name: map['type_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypeModel.fromJson(String source) => UserTypeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
