import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String text,IconData icon){
    return ListTile(
          leading: Icon(
            icon,
            size: 24,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          onTap: (){

          },
    );}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).accentColor,
          child: Text(
            'Cooking up!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile('Meals',Icons.restaurant),
        buildListTile('Filters',Icons.settings),
      ],
    );
  }
}
