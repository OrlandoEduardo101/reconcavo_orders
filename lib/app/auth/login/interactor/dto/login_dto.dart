class LoginDto {
  final String email;
  final String password;
  final String token;

  LoginDto({required this.email, required this.password, this.token = ''});
}