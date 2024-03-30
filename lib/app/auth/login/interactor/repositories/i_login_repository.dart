import 'package:reconcavo_orders/core/models/logged_user_model.dart';

import '../dto/login_dto.dart';

abstract class ILoginRepository {
  Future<LoggedUserModel> signIn(LoginDto params);
}
