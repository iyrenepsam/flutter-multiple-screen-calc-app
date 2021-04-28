

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      color: Colors.black38,
      padding: EdgeInsets.all(60),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: 55,
              width: 550,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),

                color: Colors.white30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Additionapp()));
                },
                child: Text(
                    "ADD", style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent)),
              ),

            ),
            SizedBox(height: 20),
            
            SizedBox(
              height: 50,
              width: 200,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.white30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subtractapp()));
                },
                child: Text(" SUBTRACT ",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 150,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.white30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MultiplicationApp()));
                },
                child: Text("MULTIPLY",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 100,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.white30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Divisionapp()));
                },
                child: Text("DIVIDE",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),),
              ),
            ),
          ]
      ),


    );
  }
}