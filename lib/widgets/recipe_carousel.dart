import 'package:flutter/material.dart';
import 'package:yush/models/recipe_model.dart';

class RecipeCarousel extends StatelessWidget {
  const RecipeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: recipes.length,
              itemBuilder: (BuildContext context, int index){
                return Text(recipes[index].name);
              }
          ),
        )
      ],
    );
  }
}
