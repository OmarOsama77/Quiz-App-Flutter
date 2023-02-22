 

import 'package:flutter/material.dart';
import 'package:quiz_app/qo.dart';
import 'package:quiz_app/result.dart';

class Home extends StatefulWidget{
   
  int indexqc =0 ; 
  int score=0;
  int i=0;
  Home(this.score);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  var q =
   qo(question: ["Flutter developed by?","The first alpha version of Flutter was released in ?","Flutter is mainly optimized for 2D mobile apps that can run on?","Which function is responsible for starting the program?","Streams can be of __________ types","Which of the following tests a single widget?"],
    answer: ["Google","2017","Both of them","main()","2","Widget Tests"], 
    choices: ["Oracle","IBM","Google","2016","2017","2018","Android","IOS","Both of them","main()","runapp()","run()","2","1","3","Integration Tests","Widget Tests","Unit Tests"]);
  @override
  Widget build(BuildContext context) {
 
     return Scaffold(
        body: Container(width: double.infinity,height: double.infinity,
        color: Colors.brown,
        padding: EdgeInsets.only(top: 70,left: 25,right: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("${q.question[widget.indexqc]}",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),   
              SizedBox(height: 400,),
              Column( crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: (){
                      setState(() {
                           if(q.choices[widget.i]==q.answer[widget.indexqc]){
                            widget.score+=1;
                           }
                           if(widget.indexqc+1<=q.question.length-1){
                            widget.indexqc+=1;
                           }else{
                            Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Result(result: widget.score)));
                           }
                           print("Score = ${widget.score}");
                         if(widget.i+3<=q.choices.length-1){
                          widget.i+=3;
                         }
                      });
                  }, child: Text("${q.choices[widget.i]}")),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: (){
                        setState(() {
                          if(q.choices[widget.i+1]==q.answer[widget.indexqc]){
                            widget.score+=1;
                           }
                             if(widget.indexqc+1<=q.question.length-1){
                            widget.indexqc+=1;
                           }else{
                            Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Result(result: widget.score)));
                           }
                           print("Score = ${widget.score}");
                         if(widget.i+3<=q.choices.length-1){
                          widget.i+=3;
                         }
                        });
                  }, child: Text("${q.choices[widget.i+1]}")),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: (){
                          setState(() {
                            if(q.choices[widget.i+2]==q.answer[widget.indexqc]){
            
                            widget.score+=1;
                           }
                           print("Score = ${widget.score}");
                              if(widget.indexqc+1<=q.question.length-1){
                            widget.indexqc+=1;
                           }else{
                            Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Result(result: widget.score)));
                           }
                           if(widget.i+3<=q.choices.length-1){
                          widget.i+=3;
                         }
                          });
                  }, child: Text("${q.choices[widget.i+2]}")),
                ],
              )
            ],
          ),
        ),
     );
  }
}