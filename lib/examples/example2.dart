class SuperHero {
  final String name;

  SuperHero({this.name});

  factory SuperHero.fromJSON(Map<String, dynamic> json) {
    return SuperHero(
      name: json['name'],
    );
  }
}

final String example2 = '''
[
   {
      "name":"Batman"
   },
   {
      "name":"Spiderman"
   }
]
''';
