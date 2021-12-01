import 'package:flutter/material.dart';
import 'scanner2.dart';
class Screen1 extends StatelessWidget {
  void selectScreen(BuildContext context,int n){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return Screen2();
        })
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Screen2',style:TextStyle(fontSize:30,),),
      ),
      body: Column(
        children: [

          InkWell(
            child: Text("Go To Screen 2 ",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
            onTap:()=>selectScreen(context,1) ,
          ),
        ],


      )
    );
  }
}
