import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/filters_screen.dart';
import './screens/tab_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './models/meal.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Map<String,bool> _filters={
      'gluten': false,
      'lactose':false,
      'vegan':false,
      'vegeterian':false,

    };
    List<Meal> _availableMeals=DUMMY_MEALS;
    void _setFilters(Map<String,bool> filtersData){
      setState(() {
        _filters=filtersData;
        _availableMeals=DUMMY_MEALS.where((meal) {
          if(_filters['gluten']&& !meal.isGlutenFree)
          {
            return false;
          }
          if(_filters['lactose']&& !meal.isLactoseFree)
          {
            return false;
          }
          if(_filters['vegan']&& !meal.isVegan)
          {
            return false;
          }
          if(_filters['vegeterian']&& !meal.isVegetarian)
          {
            return false;
          }
          return true;
        }).toList();
      });
    };
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
        CategoryMealscreen.routeName:(ctx)=>CategoryMealscreen(_availableMeals),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
        FilterScreen.routeName:(ctx)=>FilterScreen(_setFilters),
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
