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

List<UserModel> userListData = [
  UserModel(
    name: 'Ana Clara Oliveira',
    email: 'ana.clara.oliveira@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/ana.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Arthur Andrade',
    email: 'arthur.andrade@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/arthur.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Caio Fernandes',
    email: 'caio.fernandes@email.com',
    status: 'Bloqueado',
    image: 'assets/image/caio.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Gabriela Souza',
    email: 'gabriela.souza@email.com',
    status: 'Bloqueado',
    image: 'assets/image/gabriela.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Larissa Martins',
    email: 'larissa.martins@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/larissa.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Sofia Azevedo',
    email: 'sofia.azevedo@email.com',
    status: 'Inativo',
    image: 'assets/image/sofia.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Eduardo Dias',
    email: 'eduardo.dias@email.com',
    status: 'Inativo',
    image: 'assets/image/eduardo.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Helena Costa',
    email: 'helena.costa@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/helena.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'João Mendes',
    email: 'joao.mendes@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/joao.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
  UserModel(
    name: 'Camila Santos',
    email: 'ana.clara.oliveira@email.com',
    status: 'Usuário Ativo',
    image: 'assets/image/ana.png',
    cpf: '123.456.789-10',
    password: 'abcd1234.',
    role: Role.client,
  ),
];
