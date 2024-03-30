import 'dart:developer';

import 'package:reconcavo_orders/app/auth/login/interactor/dto/login_dto.dart';
import 'package:reconcavo_orders/core/models/logged_user_model.dart';
import 'package:reconcavo_orders/core/services/remote_storage/remote_storage_client.dart';

import '../interactor/repositories/i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  final IRemoteStorageClient remoteStorageClient;

  LoginRepository({required this.remoteStorageClient});

  @override
  Future<LoggedUserModel> signIn(LoginDto params) async {
    try {
      final response = await remoteStorageClient.signIn(params.email, params.password);

      final profile = await getUserProfile(response.user?.id ?? '');

      return LoggedUserModel.fromMap(profile, response.session, response.user);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getUserProfile(String userId) async {
    try {
      final response = await remoteStorageClient.get('user_profiles_with_types', 'user_id', userId);
      return response.first;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // Future<Map<String, dynamic>> getUserType(String user_type_id) async {
  //   try {
  //     final response = await remoteStorageClient.get('user_types', 'id', user_type_id);
  //     return response.first;
  //   } catch (e) {
  //     log(e.toString());
  //     rethrow;
  //   }
  // }
}
