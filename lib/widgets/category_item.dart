import 'package:Meals_App/screens/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({this.title, this.color, this.id});

  void goToMealsPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMeals.routeName,
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToMealsPage(context),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
          textAlign: TextAlign.center,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
