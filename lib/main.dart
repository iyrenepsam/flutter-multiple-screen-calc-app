


import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/your%20choice/users%20input.dart';

void main()=>runApp(PrimaryCalc());

class PrimaryCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("PRIMARY CALCULATOR"),
        ),
        body:UsersInput() ,
      ),
    );
  }
}
