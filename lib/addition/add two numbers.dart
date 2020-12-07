



import 'package:flutter/material.dart';

class Additionapp extends StatefulWidget {
  @override
  _AdditionappState createState() => _AdditionappState();
}

class _AdditionappState extends State<Additionapp> {
  TextEditingController getnum1=TextEditingController();
  TextEditingController getnum2=TextEditingController();
  double result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("ADDITION"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: "enter a number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: getnum2,
                decoration: InputDecoration(
                  hintText: "enter another number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: (){
                  double getn1=double.parse(getnum1.text);
                  double getn2=double.parse(getnum2.text);
                  setState(() {
                    result= getn1+getn2;
                  });

              },
              child: Text("ADD"),
              ),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
