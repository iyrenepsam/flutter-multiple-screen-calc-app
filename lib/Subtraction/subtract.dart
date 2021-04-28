

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/your%20choice/users%20input.dart';

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
          backgroundColor: Colors.black12,
          title: Text("                       -  SUBTRACT -                        "),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  labelText: "ENTER A NUMBER",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
              SizedBox(height:20.0),
              TextField(
                controller: getnum2,
                decoration: InputDecoration(
                  hintText: "ENTER ANOTHER NUMBER",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                      
                  )
                ),
              ),
              SizedBox(height: 20.0),

              SizedBox(
                height: 50,
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                    color: Colors.black,
                    onPressed: (){
                      double getn1=double.parse(getnum1.text);
                      double getn2=double.parse(getnum2.text);
                      setState(() {
                        result=getn1-getn2;
                      });

                    },
                    child: Text("REDUCE",style: TextStyle(fontSize: 20.0,color: Colors.white70)),
              )
              ),
          SizedBox(
            height: 50,
            width: 200,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60)
              ),
                color: Colors.white70,
                onPressed: (){
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=> UsersInput()));
              },
              
              child: Text("GO BACK",style: TextStyle(fontSize: 20.0, color: Colors.black),),
              )),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
