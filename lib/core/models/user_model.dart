enum Role { admin, client }
// vai definir oq o user vai fazer ou nao

class UserModel {
  /// qual é a função dos meus usuários/models?
  /// função: usuario do sistema
  final Role role;
  final String name;
  String email;
  String status;
  final String image;
  final String cpf;
  final String password;

  UserModel({
    required this.name,
    required this.email,
    required this.status,
    required this.image,
    required this.cpf,
    required this.password,
    required this.role,
  });
}
