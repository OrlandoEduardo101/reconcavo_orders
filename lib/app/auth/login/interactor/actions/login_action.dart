import 'package:reconcavo_orders/app/injector.dart';

import '../atoms/login_atom.dart';
import '../dto/login_dto.dart';
import '../repositories/i_login_repository.dart';

Future<void> signInAction(String email, String password) async {
  final repository = injector.get<ILoginRepository>();
  userState.value = await repository.signIn(LoginDto(email: email, password: password));
}
