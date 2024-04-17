
class Recipe {
  final String name;
  final String image;
  final double rating;
  final String TotalTime;

  Recipe(
      {required this.name,
      required this.image,
      required this.rating,
      required this.TotalTime});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['name'] as String,
        image: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        TotalTime: json['totalTime'] as String);
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $image, rating: $rating, totalTime: $TotalTime}';
  }
}
