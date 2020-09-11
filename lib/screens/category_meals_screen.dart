import 'package:Meals_App/dummy_data.dart';
import 'package:Meals_App/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  static final routeName = "/categoryMeals";
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArguments["title"];
    final categoryId = routeArguments["id"];

    final categolryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    print(categolryMeals);

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemCount: categolryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: categolryMeals[index].id,
              title: categolryMeals[index].title,
              affordability: categolryMeals[index].affordability,
              complexity: categolryMeals[index].complexity,
              duration: categolryMeals[index].duration,
              imageUrl: categolryMeals[index].imageUrl,
            );
          },
        ));
  }
}
