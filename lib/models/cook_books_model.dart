class CookBook {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  CookBook({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}