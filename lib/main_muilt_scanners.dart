import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'scanner1.dart';
import 'scanner2.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Flutter',
     home:MyHomePage(),
   );
  }

}
class MyHomePage extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {

  void selectScreen(BuildContext context,int n){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_){
        if(n==1) return Screen1();
         return Screen2();
      })
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Main Screen',style:TextStyle(fontSize:30,),),
      ),
      body: Container(
         width: double.infinity,
        //alignment:AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text("Go To Screen 1,",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
              onTap:()=>selectScreen(context,1) ,
            ),
            InkWell(
              child: Text("Go To Screen 2,",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
              onTap:()=>selectScreen(context,2) ,
            ),
          ],

        ),

      ),
    );
  }
}