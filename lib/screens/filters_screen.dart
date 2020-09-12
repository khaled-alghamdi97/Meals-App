import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filtters";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var GlutenFree = false;

  var Vegan = false;

  var Vegetarian = false;

  var LactoseFree = false;

  Widget _bulidSwitchListView(String switchTitle, String description,
      bool currentValue, Function switchValue) {
    return SwitchListTile(
      value: currentValue,
      onChanged: switchValue,
      title: Text(switchTitle),
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Adjust you meal selection"),
          padding: EdgeInsets.all(20),
        ),
        Expanded(
            child: ListView(
          children: [
            _bulidSwitchListView(
                "Gluteen-free", "Only include gluteen-free meals", GlutenFree,
                (newSwitchValue) {
              setState(() {
                GlutenFree = newSwitchValue;
              });
            }),
            _bulidSwitchListView("Vegan", "Only include Vegan meals", Vegan,
                (newSwitchValue) {
              setState(() {
                Vegan = newSwitchValue;
              });
            }),
            _bulidSwitchListView(
                "Lactose-Free", "Only include Lactose-Free meals", LactoseFree,
                (newSwitchValue) {
              setState(() {
                LactoseFree = newSwitchValue;
              });
            }),
            _bulidSwitchListView(
                "Vegetarian", "Only include Vegetarian meals", Vegetarian,
                (newSwitchValue) {
              setState(() {
                Vegetarian = newSwitchValue;
              });
            }),
          ],
        ))
      ],
    );
  }
}
