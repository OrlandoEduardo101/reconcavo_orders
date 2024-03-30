// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../core/models/logged_user_model.dart';

class AppState {
  final LoggedUserModel loggedUser;

  AppState({required this.loggedUser});

  static AppState empty() => AppState(loggedUser: LoggedUserModel.empty());



  AppState copyWith({
    LoggedUserModel? loggedUser,
  }) {
    return AppState(
      loggedUser: loggedUser ?? this.loggedUser,
    );
  }
}
