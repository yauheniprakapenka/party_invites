import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_parse_json/examples/example1.dart';
import 'package:flutter_parse_json/examples/example2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            // Document document = Document.fromJSON(jsonDecode(example1));
            // print(document.id);

            Iterable i = jsonDecode(example2);
            List<SuperHero> superHeroes = List<SuperHero>.from(
              i.map(
                (model) => SuperHero.fromJSON(model),
              ),
            );

            superHeroes.forEach((i) {
              print(i.name);
            });
          },
        ),
      ),
    );
  }
}
