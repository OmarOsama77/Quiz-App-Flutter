import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/home.dart';

class Result extends StatelessWidget {
  int result;
 
Result({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        padding: EdgeInsets.only(top: 70,left: 40,right: 40),
      color: Colors.brown,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Result = ${this.result}/6",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          Text(result>=3?"Congratulations":"Have a Good luck next time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
             Row(
              children: [
                 ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Home(0)));
          }, child: Text("Try agin")),
         SizedBox(width: 100,),
           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: (){
            exit(0);
          }, child: Text("Exit"))
              ],
             )
        ],
      ),
      ),
    );
  }
}