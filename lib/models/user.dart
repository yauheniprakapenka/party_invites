class User {
  final int code;

  User({this.code});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      code: json['code'],
    );
  }
}
