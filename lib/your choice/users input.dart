

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/Multipliction/multiply.dart';
import 'package:flutter_calculator_app/Subtraction/subtract.dart';
import 'package:flutter_calculator_app/addition/add%20two%20numbers.dart';
import 'package:flutter_calculator_app/division/divisionapp.dart';
class UsersInput extends StatefulWidget {
  @override
  _UsersInputState createState() => _UsersInputState();
}

class _UsersInputState extends State<UsersInput> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Additionapp()));
              },
              child: Text(
                  "ADD", style: TextStyle(fontSize: 20.0, color: Colors.blue)),
            ),

            RaisedButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Subtractapp()));
              },
              child: Text(" SUBTRACT ",
                style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),),
            ),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MultiplicationApp()));
              },
              child: Text("MULTIPLY",
                style: TextStyle(fontSize: 20.0, color: Colors.brown),),
            ),
            RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Divisionapp()));
              },
              child: Text("DIVIDE",
                style: TextStyle(fontSize: 20.0, color: Colors.white),),
            )
          ]
      ),


    );
  }
}