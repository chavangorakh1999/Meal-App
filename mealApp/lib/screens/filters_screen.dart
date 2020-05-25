import 'package:flutter/material.dart';
import 'package:mealApp/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter_screen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isGlutenFree = false;
  bool isVegan = false;
  bool isVegetarian = false;
  bool isLactoseFree = false;

  Widget _buildSwitchTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text('Include Gluten Free Meals'),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection !',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchTile(
                    'Gluteen-Free',
                    'Only include gluteen-free meal',
                    isGlutenFree,
                    (newValue) {
                      setState(
                        () {
                          isGlutenFree = newValue;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'Luctose Free',
                    'Only Lactose free meal',
                    isLactoseFree,
                    (newValue) {
                      setState(
                        () {
                          isLactoseFree = newValue;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'VEGAN',
                    'Only vegan meal',
                    isVegan,
                    (newValue) {
                      setState(
                        () {
                          isVegan = newValue;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'Vegeterian',
                    'Only Vegeterian',
                    isVegetarian,
                    (newValue) {
                      setState(
                        () {
                          isVegetarian = newValue;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
