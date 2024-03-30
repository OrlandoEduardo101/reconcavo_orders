import 'package:flutter_test/flutter_test.dart';
import 'package:reconcavo_orders/core/models/logged_user_model.dart';

void main() {
  const response = '''
    {
    "user_id": "5196d0ec",
    "user_type_id": 1,
    "full_name": "Orlando Eduardo Pereira",
    "phone_number": "+5575999999999",
    "created_at": "2024-03-27 19:51:48.237678+00",
    "updated_at": "2024-03-27 21:41:38.818814+00",
    "user_type": {
      "id": 1,
      "type_name": "administrador"
    }
  }
''';
  test('must return a logged user model', () {
    final user = LoggedUserModel.fromJson(response, null, null);

    expect(user.name, equals('Orlando Eduardo Pereira'));
    expect(user.userType.id, equals(1));
  });
}
