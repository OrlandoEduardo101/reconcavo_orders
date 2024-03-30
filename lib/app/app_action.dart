import '../core/models/logged_user_model.dart';
import 'app_atom.dart';

Future<void> setGlobalLoggedUser(LoggedUserModel user) async {
  appState.value = appState.value.copyWith(loggedUser: user);
}
