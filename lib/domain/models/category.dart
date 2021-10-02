class CategoryModel {
  final String name;
  final List<ImageModel> image;

  CategoryModel({
    required this.image,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    final Iterable  imageJson = json['images'];
    final List<ImageModel> image = imageJson.map((i) {
      return ImageModel.fromJson(i);
    }).toList();

    return CategoryModel(
      name: json['name'],
      image: image,
    );
  }
}

class ImageModel {
  final int id;
  final String imageName;

  ImageModel({
    required this.id,
    required this.imageName,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      imageName: json['imageName'],
    );
  }
}
