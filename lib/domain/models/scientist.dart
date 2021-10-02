class ScientistModel {
  final String name;
  final int id;

  ScientistModel({
    required this.id,
    required this.name,
  });

  factory ScientistModel.fromJson(Map<String, dynamic> json) {
    return ScientistModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
