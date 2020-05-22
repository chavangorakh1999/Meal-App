import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tab_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Colors.black,
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoryScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(ctx)=>TabScreen(),
        CategoryMealscreen.routeName:(ctx)=>CategoryMealscreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
        FilterScreen.routeName:(ctx)=>FilterScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);

      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoryScreen());
      },
    );
  }
}
