import 'package:flutter/material.dart';
import 'package:flutter_new_project/domain/services/album/album.dart';

void main() async {
  runApp(const MaterialApp(home: MyApp()));
  await readJson();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

Future<void> readJson() async {
  final data = await AlbumService.getAlbums();
  for (var i in data.album) {
    print(i.title);
  }
}
