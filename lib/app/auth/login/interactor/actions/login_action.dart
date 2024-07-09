import 'package:reconcavo_orders/app/injector.dart';

import '../atoms/login_atom.dart';
import '../dto/login_dto.dart';
import '../repositories/i_login_repository.dart';

Future<void> signInAction(String email, String password) async {
  final repository = injector.get<ILoginRepository>();
  userState.value = await repository.signIn(LoginDto(email: email, password: password));
}

Future<void> resetPasswordForEmailAction(String email) async {
  isSendingEmail.value = true;
  final repository = injector.get<ILoginRepository>();
  await repository.resetPasswordForEmail(LoginDto(email: email, password: ''));
  resetPasswordMessage.value = 'Confira as instruções no seu email';
  isSendingEmail.value = false;
}
