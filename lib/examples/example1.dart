class Document {
  final String type;
  final int id;
  final List<String> data;
  final Author author;

  Document({this.type, this.id, this.author, this.data});

  factory Document.fromJSON(Map<String, dynamic> json) {
    return Document(
      type: json['type'],
      id: json['id'],
      author: Author.fromJSON(json['author']),
      data: List<String>.from(json['data']),
    );
  }
}

class Author {
  final int id;
  final String name;

  Author({this.id, this.name});

  factory Author.fromJSON(Map<String, dynamic> json) {
    return Author(
      id: json['id'],
      name: json['name'],
    );
  }
}

final String example1 = '''
{
   "type":"articles",
   "id":1,
   "data":[
      "value 1",
      "vale 2"
   ],
   "author":{
      "id":42,
      "name":"Tomas"
   }
}
''';
