import 'package:Meals_App/screens/categories_screen.dart';
import 'package:Meals_App/screens/category_meals_screen.dart';
import 'package:Meals_App/screens/filters_screen.dart';
import 'package:Meals_App/screens/meal-detail.dart';
import 'package:Meals_App/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 219, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontFamily: "RobotoCondensed",
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
      // home: CategoryScreen(),      we replace it with the rout "/" and its the same thing
      routes: {
        "/": (ctx) => TabsScreen(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetail.routeName: (ctx) => MealDetail(),
        FiltersScreen.routeName: (ctx) => FiltersScreen()
      },
    );
  }
}
