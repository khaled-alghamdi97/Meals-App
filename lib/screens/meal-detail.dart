import 'package:Meals_App/dummy_data.dart';
import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => mealId == meal.id);

    Widget titleContainer(BuildContext ctx, String title) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            title,
            style: Theme.of(ctx).textTheme.title,
          ),
        ),
      );
    }

    Widget listViwContainer(Widget lstView) {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
            color: Colors.yellow),
        height: 200,
        width: 300,
        child: lstView,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                titleContainer(context, "Ingrediants"),
                listViwContainer(ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Container(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(selectedMeal.ingredients[index]));
                  },
                  itemCount: selectedMeal.ingredients.length,
                )),
                titleContainer(context, "steps"),
                listViwContainer(ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Container(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(selectedMeal.steps[index]),
                        leading: CircleAvatar(
                            child: Text("${index + 1}"),
                            backgroundColor: Colors.cyan[50]),
                      ),
                    );
                  },
                  itemCount: selectedMeal.steps.length,
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
