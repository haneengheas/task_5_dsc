import 'package:flutter/material.dart';
class TextLine extends StatelessWidget {
  IconData icon1;
  String text;
 IconData icon2;
 bool hidden;
  TextLine({
    this.text,
    this.icon1,
    this.icon2,
    this.hidden,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (String value) {
          print(value);
        },
        obscureText: hidden,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: Icon(
           icon1,
            size: 23,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            icon2,
            size: 25,
            color: Colors.grey,
          ),
          labelText: text,
          labelStyle: TextStyle(fontSize: 18,color: Color.fromRGBO(98, 42, 123, 1),
          ),
          helperText: 'required',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Color.fromRGBO(98, 42, 123, 1),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Color.fromRGBO(98, 42, 123, 1),
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
