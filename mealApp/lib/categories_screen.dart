import 'package:flutter/material.dart';
import 'package:mealApp/category_item.dart';
import 'package:mealApp/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DesiKatta'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.toc),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: null,
          ),
        ],
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
