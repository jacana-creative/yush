class Recipe {
  String imageUrl;
  String name;
  String details;
  String userAccount;
  String type;
  int rating;


  Recipe({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.rating,
    required this.details,
    required this.userAccount,

  });
}

List<Recipe> recipes = [
  Recipe(
    imageUrl: 'assets/images/macarons.jpg',
    name: 'Macarons',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food1.jpg',
    name: 'Kabab',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food2.jpg',
    name: 'Pasta Dinned',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food3.jpeg',
    name: 'Pie',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food4.jpg',
    name: 'Egg & ham',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food5.jpg',
    name: 'Salad',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food6.jpg',
    name: 'Pancakes',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food7.jpg',
    name: 'Macarons',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),
  Recipe(
    imageUrl: 'assets/images/food8.png',
    name: 'Macarons',
    details: 'This is a very very tasty food that will fill your soul and '
        'leave you wanting moe everyday',
    type: 'Snack',
    rating: 4,
    userAccount: '@eeazypeazymeals',
  ),

];