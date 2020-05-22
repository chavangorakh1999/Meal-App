import 'package:flutter/material.dart';
import 'package:mealApp/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Center(child: Text('Filter')));
  }
}
