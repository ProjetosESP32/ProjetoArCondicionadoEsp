class LoginModel {
  final String? senha;
  final String? email;
  final String? nome;

  LoginModel({
    this.nome,
    this.email,
    this.senha,
  });
  LoginModel copyWith({
    String? usuario,
    String? senha,
    String? email,
    String? nome,
  }) {
    return LoginModel(
      senha: senha ?? this.senha,
      email: email ?? this.email,
      nome: nome ?? this.nome,
    );
  }
}
