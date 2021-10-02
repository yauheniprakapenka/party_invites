class AddressModel {
  final String city;
  final List<String> streets;

  AddressModel({
    required this.city,
    required this.streets,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    final streetsJson = json['streets'];
    final List<String> streets = streetsJson.cast<String>();
    return AddressModel(city: json['city'], streets: streets);
  }
}
