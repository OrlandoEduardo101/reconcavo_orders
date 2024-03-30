import 'package:asp/asp.dart';

import '../../../../../core/models/logged_user_model.dart';

final userState = Atom<LoggedUserModel>(LoggedUserModel.empty());