import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/home.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        color: Colors.brown,
        padding: EdgeInsets.only(top: 70,left: 25,right: 25),
        child: Column(
          children: [
            Text("Are you ready ?",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 22,),
            Text("Have a good luck",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
           SizedBox(height: 250,),
           
            Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black)
                  ,onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Home(0)));
            }, child: Text("Go"))
              ],
            )
          ],
        ),
      ),
    );
  }
}