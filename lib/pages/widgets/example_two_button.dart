import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_parse_json/models/super_hero.dart';
import 'package:flutter_parse_json/stubs/example_two.dart';

class ExampleTwoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('example 2'),
      onPressed: () {
        Iterable i = jsonDecode(example2);
        List<SuperHero> superHeroes = List<SuperHero>.from(
          i.map(
            (model) => SuperHero.fromJSON(model),
          ),
        );

        superHeroes.forEach(
          (i) {
            print(i.name);
          },
        );
      },
    );
  }
}
