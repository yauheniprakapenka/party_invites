class ShapeModel {
  final String shapeName;
  final PropertyModel property;

  ShapeModel({
    required this.shapeName,
    required this.property,
  });

  factory ShapeModel.fromJson(Map<String, dynamic> json) {
    final property = PropertyModel.fromJson(json['property']);
    return ShapeModel(
      shapeName: json['shape_name'],
      property: property,
    );
  }
}

class PropertyModel {
  final double width, height;

  PropertyModel({
    required this.height,
    required this.width,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) {
    return PropertyModel(
      height: json['height'],
      width: json['width'],
    );
  }
}
