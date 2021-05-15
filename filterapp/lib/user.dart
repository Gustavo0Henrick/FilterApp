class User {
  int id;
  String name;
  String state;
  String city;

  User({this.id, this.name, this.state, this.city});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
    );
  }
}
