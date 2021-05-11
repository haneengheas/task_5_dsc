import 'package:flutter/material.dart';

class NumMeal extends StatefulWidget {
  @override
  _NumMealState createState() => _NumMealState();
}

class _NumMealState extends State<NumMeal> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      underline: Container(
        width: 20,
        height: 2,
        color: Color.fromRGBO(98, 42, 123, 1),
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['1', '2', '3', '4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}