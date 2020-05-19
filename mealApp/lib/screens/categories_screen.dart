import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('DesiKatta'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.toc),
              onPressed: ()=>{},

            ),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: ()=>{},
            ),
          ],
        ),
        backgroundColor: Theme.of(context).canvasColor,
        body: GridView(
          padding: EdgeInsets.all(25),
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.title,
                  catData.color,
                  catData.id,
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
