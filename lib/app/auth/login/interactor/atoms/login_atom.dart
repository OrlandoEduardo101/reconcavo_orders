import 'package:asp/asp.dart';

import '../models/logged_user_model.dart';

final userState = Atom<LoggedUserModel>(LoggedUserModel.empty());