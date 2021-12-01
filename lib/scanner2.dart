import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void selectScreen(BuildContext context,int n){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return Screen2();
          })
      );
    }
    return  Scaffold(
      appBar: AppBar(
        title:Text('Screen2',style:TextStyle(fontSize:30,),),
      ),
      body: Center(
        child:InkWell(
          child: Text("Go To Screen 1 ",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
          onTap:()=>selectScreen(context,1) ,
        ),

      ),
    );
  }
}
