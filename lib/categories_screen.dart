import 'package:Meals_App/category_item.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: dummyList
            .map((e) => CategoryItem(
                  id: e.id,
                  title: e.title,
                  color: e.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 3 / 2,
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
