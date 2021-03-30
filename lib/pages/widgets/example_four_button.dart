import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_parse_json/models/user.dart';
import 'package:flutter_parse_json/network/api_provider.dart';

class ExampleFourButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('example 4'),
      onPressed: () async {
        String response = await apiProvider.fetchUsers();
        User user = User.fromJson(jsonDecode(response));
        print(user.code);
      },
    );
  }
}
