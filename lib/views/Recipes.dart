import 'package:flutter/material.dart';
import 'package:task_5_dsc/views/num_meal.dart';
class Recipes extends StatelessWidget {
  final String text;
  final String image;
  Recipes({this.text, this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(240, 250, 19, 1),
      shadowColor: Color.fromRGBO(98, 42, 123, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    height: 140,
                    width: 280,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/$image'),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50, right: 200, bottom: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromRGBO(98, 42, 123, 1),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 15, right: 10),
            child: NumMeal(),
          )
        ],
      ),
    );
  }
}
