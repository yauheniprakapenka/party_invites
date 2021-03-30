import 'package:flutter/material.dart';
import 'package:flutter_parse_json/pages/home_page.dart';

/// https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
