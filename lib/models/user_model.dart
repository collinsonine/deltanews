class User {
  final String name;
  final String email;
  final String password;
  final String token;

  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.token});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        token: json['token']);
  }
}
