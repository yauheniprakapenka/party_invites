import 'package:flutter/material.dart';
import 'package:flutter_parse_json/pages/widgets/example_four_button.dart';
import 'package:flutter_parse_json/pages/widgets/example_one_button.dart';
import 'package:flutter_parse_json/pages/widgets/example_three_button.dart';
import 'package:flutter_parse_json/pages/widgets/example_two_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ExampleOneButton(),
            ExampleTwoButton(),
            ExampleThreeButton(),
            ExampleFourButton(),
          ],
        ),
      ),
    );
  }
}
