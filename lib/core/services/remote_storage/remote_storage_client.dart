import 'dart:typed_data';

import 'package:supabase_flutter/supabase_flutter.dart';

// Defina a interface
abstract class IRemoteStorageClient {
  Future<AuthResponse> signIn(String email, String password);
  Future<AuthResponse> signUp(String email, String password);
  Future<void> resetPasswordForEmail(String email);
  // Adicione outros métodos que você precisa expor.
  Future<List<Map<String, dynamic>>> get(String table, String filterColum, String filterValue);
  Future<dynamic> add(String table, Map<String, dynamic> data);
  Future<dynamic> update(String table, Map<String, dynamic> data);
  Future<dynamic> delete(String table, String id);
  Future<String> uploadFile(String bucket, String fileName, Uint8List fileBytes);
  Future<UserResponse> updateUserPassword(String password, String token);
}

// Implemente a interface
class RemoteStorageClient implements IRemoteStorageClient {
  final SupabaseClient _client;

  RemoteStorageClient(this._client);

  @override
  Future<void> resetPasswordForEmail(String email) async {
    return await _client.auth.resetPasswordForEmail(email);
  }

  @override
  Future<UserResponse> updateUserPassword(String password, String token) async {
    await _client.auth.verifyOTP(token: token, type: OtpType.recovery);
    return await _client.auth.updateUser(
      UserAttributes(
        password: password,
      ),
    );
  }

  @override
  Future<AuthResponse> signIn(String email, String password) async {
    return await _client.auth.signInWithPassword(email: email, password: password);
  }

  @override
  Future<AuthResponse> signUp(String email, String password) async {
    return await _client.auth.signUp(email: email, password: password);
  }

  // Implemente outros métodos da interface conforme necessário.

  @override
  Future<List<Map<String, dynamic>>> get(String table, String filterColum, String filterValue) async {
    final response = await _client.from(table).select().eq(filterColum, filterValue);
    return response;
  }

  @override
  Future<dynamic> add(String table, Map<String, dynamic> data) async {
    final response = await _client.from(table).insert(data);
    return response;
  }

  @override
  Future<dynamic> update(String table, Map<String, dynamic> data) async {
    final response = await _client.from(table).update(data);
    return response;
  }

  @override
  Future<dynamic> delete(String table, String id) async {
    final response = await _client.from(table).delete().match({'id': id});
    return response;
  }

  @override
  Future<String> uploadFile(String bucket, String fileName, Uint8List fileBytes) async {
    _client.storage.setAuth(_client.auth.currentSession!.accessToken);
    final response = await _client.storage.from(bucket).uploadBinary(fileName, fileBytes);

    final publicUrlResponse = _client.storage.from(bucket).getPublicUrl(fileName);

    final imageUrl = publicUrlResponse;

    return imageUrl;
  }
}
