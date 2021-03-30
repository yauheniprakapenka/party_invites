import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_parse_json/models/document.dart';
import 'package:flutter_parse_json/stubs/example_one.dart';

class ExampleOneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('example 1'),
      onPressed: () {
        Document document = Document.fromJSON(jsonDecode(example1));
        print(document.data[0]);
      },
    );
  }
}
