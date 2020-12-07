



import 'package:flutter/material.dart';

class MultiplicationApp extends StatefulWidget {
  @override
  _MultiplicationAppState createState() => _MultiplicationAppState();
}

class _MultiplicationAppState extends State<MultiplicationApp> {

  TextEditingController getnum1=TextEditingController();
  TextEditingController getnum2=TextEditingController();
  double result=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Multiplication App"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: "enter a numer",
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
                color: Colors.blue,
                onPressed: (){
                double getn1=double.parse(getnum1.text);
                double getn2=double.parse(getnum2.text);
                setState(() {
                  result=getn1*getn2;
                });
              },
              child: Text("MULTIPLY"),
              ),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
