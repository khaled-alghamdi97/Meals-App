import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  static final routeName = "/categoryMeals";
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final title = routeArguments["title"];
    final id = routeArguments["id"];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("you did it!!"),
      ),
    );
  }
}
