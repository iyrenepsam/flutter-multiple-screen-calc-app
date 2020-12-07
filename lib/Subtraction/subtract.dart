

import 'package:flutter/material.dart';

class Subtractapp extends StatefulWidget {
  @override
  _SubtractappState createState() => _SubtractappState();
}

class _SubtractappState extends State<Subtractapp> {
  TextEditingController getnum1=TextEditingController();
  TextEditingController getnum2=TextEditingController();
  double result=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("SubractionApp"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: "ENTER A NUMBER",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height:20.0),
              TextField(
                controller: getnum2,
                decoration: InputDecoration(
                  hintText: "ENTER ANOTHER NUMBER",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0),

              RaisedButton(
                color: Colors.blueGrey,
                onPressed: (){
                  double getn1=double.parse(getnum1.text);
                  double getn2=double.parse(getnum2.text);
                  setState(() {
                    result=getn1-getn2;
                  });
                 
              },
              child: Text("SUBTRACT",style: TextStyle(fontSize: 20.0,color: Colors.blue)),

              ),
              RaisedButton(onPressed: (){
                
                
                
                Navigator.push(context, route)
              },
              
              child: Text("bACK"),
              ),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
