import 'dart:html';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter App 2',
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    Widget info(String title,Color color){
    return Container(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(23),
        child:Text(title,style: TextStyle(fontSize:30,),textAlign:TextAlign.center,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
             color.withOpacity(0.8),
              color,
            ],
            begin:Alignment.topLeft ,
            end:Alignment.bottomRight ,
          ),
          color: color,
          borderRadius:BorderRadius.circular(15) ,
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('App02'),),
      body:Container(

        padding:EdgeInsets.only(top:15),
        child:GridView(
          children: [
            info('title1', Colors.pinkAccent),
            info('title2', Colors.purpleAccent),
            info('title3', Colors.lightGreenAccent),
            info('title4', Colors.yellow),
            info('title5', Colors.grey),
            info('title6', Colors.orange),
            info('title7', Colors.cyan),
            info('title8', Colors.lightGreenAccent),
            info('title9', Colors.brown),
            info('title10', Colors.yellow),
            info('title11', Colors.redAccent),
            info('title12', Colors.deepPurpleAccent),
            info('title13', Colors.greenAccent),
            info('title14', Colors.lightGreen),
            info('title15', Colors.teal),
            info('title16', Colors.blueGrey),
            info('title17', Colors.red),
            info('title19', Colors.orange),
            info('title20', Colors.deepPurple),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),

        ),

      )
      ,
    );
  }
}
