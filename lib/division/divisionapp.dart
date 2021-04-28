



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_calculator_app/your%20choice/users%20input.dart';

class Divisionapp extends StatefulWidget {
  @override
  _DivisionappState createState() => _DivisionappState();
}

class _DivisionappState extends State<Divisionapp> {
TextEditingController getnum1=TextEditingController();
TextEditingController getnum2=TextEditingController();
double result=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("                         "
              " / Division / "),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: " enter a number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: getnum2,
                decoration: InputDecoration(
                  hintText: "enter another number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0),

              RaisedButton(
                color: Colors.grey,
                onPressed: (){

                  double getn1=double.parse(getnum1.text);
                  double getn2=double.parse(getnum2.text);

                  setState(() {
                    result=getn1/getn2;
                  });

              },
              child: Text("    DIVIDE   ",style: TextStyle
                (fontSize: 20.0,color: Colors.brown)),
              ),





                RaisedButton(

                  color: Colors.grey,
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>UsersInput()));
                  },
                  child: Text(" Back ", style: TextStyle(fontSize: 20)),
                ) ,

              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
