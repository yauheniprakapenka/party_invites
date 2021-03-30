class Movie {
  final int total_pages;
  final List<Results> results;

  Movie({
    this.total_pages,
    this.results,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;
    List<Results> resultsList = list
        .map(
          (i) => Results.fromJson(i),
        )
        .toList();

    return Movie(
      total_pages: json['total_pages'],
      results: resultsList,
    );
  }
}

class Results {
  final String title;

  Results({this.title});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      title: json['title'],
    );
  }
}
