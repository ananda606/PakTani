class User {
  final int id;
  final String name;
  final String address;
  final String email;
  final String password;
  User({
    required this.id,
    required this.name,
    required this.address,
    required this.email,
    required this.password,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        address: json['address'],
        email: json['email'],
        password: json['']);
  }
}

