import 'package:flutter/material.dart';
import 'package:task_5_dsc/views/Recipes.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Resturant Menu',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color.fromRGBO(98, 42, 123, 1),

      ),
      body: ListView(
            children: [
              Recipes(text:'pizza', image:'meal.jpg'),
              Recipes(text:'Burger', image:'burger1.jpg'),
              Recipes(text:'pasta', image:'pasta.jpg'),
              Recipes(text:'Feries', image:'fries.jpg'),
              Recipes(text:'dessert', image:'cake1.jpg')
            ],

      ),
    );
  }
}