import 'package:flutter/material.dart';
import 'package:task_5_dsc/views/homepage.dart';
import 'package:task_5_dsc/views/textline.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 250, 19, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 130, bottom: 25),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(98, 42, 123, 1),
                ),
              ),
            ),
            TextLine(
              text: 'Uesr Name',
              icon1: Icons.person_pin,
            ),
            TextLine(text: 'Email', icon1: Icons.mail),
            TextLine(
              text: 'Password',
              icon1: Icons.lock,
              icon2: Icons.remove_red_eye,
              // hidden: true,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Container(
                  margin: EdgeInsets.all(25),
                  height: 50,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 42, 123, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'CREATE  ACCOUNT',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
