class User {
  User({this.id, this.name, this.email});

  String? id;
  String? name;
  String? email;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}
