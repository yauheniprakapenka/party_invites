class SuperHero {
  final String name;

  SuperHero({this.name});

  factory SuperHero.fromJSON(Map<String, dynamic> json) {
    return SuperHero(
      name: json['name'],
    );
  }
}
