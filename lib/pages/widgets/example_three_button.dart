import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_parse_json/models/movie.dart';
import 'package:flutter_parse_json/stubs/example_three.dart';

class ExampleThreeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('example 3'),
      onPressed: () {
        Movie movie = Movie.fromJson(jsonDecode(example3));
        movie.results.forEach(
          (i) {
            print(i.title);
          },
        );
      },
    );
  }
}
