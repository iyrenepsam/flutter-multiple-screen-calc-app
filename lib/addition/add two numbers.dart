



import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/your%20choice/users%20input.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("                   +    ADDITION     +        "),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: "enter a number",
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

              SizedBox(
                height: 50,
                width: 500,
                child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.blueGrey,
                onPressed: (){
                  double getn1=double.parse(getnum1.text);
                  double getn2=double.parse(getnum2.text);
                    setState(() {
                  result= getn1+getn2;
                  });
                  },
                 child: Text("ADD",style: TextStyle(color: Colors.black),),
              ),
              ),

              SizedBox(
                height:50,
                width: 350,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> UsersInput()));

                      Text("Back", style: TextStyle(color: Colors.black38),);
                    }),
              ),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
