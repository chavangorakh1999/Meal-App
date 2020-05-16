import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId,this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArg=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle=routeArg['title'];
    final categoryId=routeArg['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('Slected Category'),
      ),
    );
  }
}
