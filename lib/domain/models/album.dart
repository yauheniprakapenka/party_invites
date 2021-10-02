class AlbumListModel {
  final List<AlbumModel> album;

  AlbumListModel({
    required this.album,
  });

  factory AlbumListModel.fromJson(List<dynamic> json) {
    final List<AlbumModel> album = json.map((e) {
      return AlbumModel.fromJson(e);
    }).toList();
    return AlbumListModel(album: album);
  }
}

class AlbumModel {
  final String title;

  AlbumModel({
    required this.title,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(title: json['title']);
  }
}
