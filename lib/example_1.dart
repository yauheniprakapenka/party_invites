// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:convert';

const jsonWithMap = '''
{ 
  "gender": {
    "label": "Wanita"
  }
}
''';

const jsonWithList = '''
{ 
  "gender": [
    "Cat",
    "Dog"
  ]
}
''';

void main() {
  final Map<String, dynamic> decodedJson = jsonDecode(jsonWithList);

  if (decodedJson['gender'] is Map) {
    print(decodedJson.containsKey('gender')); // true
    print(decodedJson['gender']?.containsKey('age')); // false
    if (decodedJson['gender'] != null) { // true
      final Map<String, dynamic> gender = decodedJson['gender'];
      if (gender.containsKey('label')) { // true
        print(gender['label']); // Wanita
      }
    }
  } else if (decodedJson['gender'] is List) {
    print(decodedJson.containsKey('gender')); // true
    print(decodedJson['gender']); // [Cat, Dog]
    final List gender = decodedJson['gender'];
    final fdasf = gender.map((e) => e.toString()).toList(); 
    print(fdasf.first); // Cat
  }
}
