import 'package:Meals_App/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget bulidListTile(String title, IconData icon, Function selectPage) {
    return ListTile(
      leading: Icon(
        icon,
        size: 23,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      onTap: selectPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            height: 120,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            child: Text(
              "Drawer",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          bulidListTile("Meals", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed("/");
          }),
          bulidListTile("Filters", Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          })
        ],
      ),
    );
  }
}
