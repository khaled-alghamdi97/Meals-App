import 'package:Meals_App/model/meals.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String title;
  final int duration;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {@required this.title,
      @required this.duration,
      @required this.imageUrl,
      @required this.complexity,
      @required this.affordability});

  void goToMealDetail() {}

  String get _getComplaxityString {
    switch (complexity) {
      case Complexity.Simple:
        return "simple";
        break;
      case Complexity.Hard:
        return "Hard";
        break;

      case Complexity.Challenging:
        return "Challenging";
        break;
    }
  }

  String get _getAffordabilityString {
    switch (affordability) {
      case Affordability.Affordable:
        return "simple";
        break;
      case Affordability.Pricey:
        return "Hard";
        break;

      case Affordability.Luxurious:
        return "Challenging";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColorLight,
      onTap: goToMealDetail,
      child: Card(
        margin: EdgeInsets.all(15),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.timer),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.business_center),
                      SizedBox(
                        width: 6,
                      ),
                      Text(_getComplaxityString),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(_getAffordabilityString),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
