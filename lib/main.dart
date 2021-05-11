import 'package:flutter/material.dart';
import 'package:task_5_dsc/views/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task DSC 5",
      home: Scaffold(
        body: SignUp(),
      ),
    );
  }
}
