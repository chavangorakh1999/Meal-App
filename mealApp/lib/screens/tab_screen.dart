import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favourite_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [
    CategoryScreen(),
    FavouritesScreen(),
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor:Theme.of(context).primaryColor ,
            icon: Icon(Icons.category),
            title: Text('Categories',)
          ),
           BottomNavigationBarItem(
             backgroundColor:Theme.of(context).primaryColor ,
            icon: Icon(Icons.star),
            title: Text('Favourite'),
          ),
        ],
      ),
    );
  }
}
