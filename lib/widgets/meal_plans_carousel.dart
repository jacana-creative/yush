import 'package:flutter/material.dart';
import 'package:yush/models/recipe_model.dart';

class MealPlansCarousel extends StatelessWidget {
  const MealPlansCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
              width: 210.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 45.0,
                    top: 0.0,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      height: 280.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipes[index].name,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              recipes[index].userAccount,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 180.0,
                            image: AssetImage(recipes[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: null,
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: Size(50.0, 30.0),
                                    backgroundColor: Colors.orangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(recipes[index].type, style:
                                  TextStyle(color: Colors.white, fontWeight:
                                  FontWeight.w600),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
