import 'package:flutter/material.dart';
import './dummy_data.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const routeName='/category-meal';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId,this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArg=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle=routeArg['title'];
    final categoryId=routeArg['id'];
    final categoryMeal=DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList() ;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){

        return Text(categoryMeal[index].title);
      },itemCount: categoryMeal.length,)
    );
  }
}
