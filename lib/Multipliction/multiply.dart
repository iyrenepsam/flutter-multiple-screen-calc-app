



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/your%20choice/users%20input.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("               * Multiplication App * "),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: getnum1,
                decoration: InputDecoration(
                  hintText: "enter a number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20.0),

              TextField(
                controller: getnum2,
                decoration: InputDecoration(
                  hintText: "enter another number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 100,
                child:RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.blue,
                  onPressed: (){
                    double getn1=double.parse(getnum1.text);
                    double getn2=double.parse(getnum2.text);
                    setState(() {
                      result=getn1*getn2;
                    });
                  },
                  child: Text("MULTIPLY"),
                ) ,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 100,
                child:RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black12,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> UsersInput()));
                  },
                  child: Text(" Back "),
                ) ,
              ),

              Text(result.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
