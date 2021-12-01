import 'package:app02/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
Color b= Colors.black;
Color w=Colors.white;

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Flutter App",
      home:MyHomePage() ,

    );
  }
}
class MyHomePage extends StatelessWidget{
 final List<Info>li=[
   Info(name: "mohamed", height: 175, date:DateTime.now()),
   Info(name: "mohamed1", height: 180, date:DateTime.now()),
   Info(name: "mohamed2",  height: 185, date:DateTime.now()),
   Info(name: "mohamed3", height: 190, date:DateTime.now()),
   Info(name: "mohamed4", height: 195, date:DateTime.now()),

  ];



  @override
  Widget build(BuildContext context) {
   return Scaffold(

    appBar: AppBar(
      title: Text("Flutter App",style:TextStyle(fontSize:30),),

     ),
    body : Container(
        //height:double.infinity,
     //  width:double.infinity,
      color:b,
      child:Column(
        children: [
        ...li.map((vale){
          return Container(
              padding: EdgeInsets.all(10),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("${vale.name}",style:TextStyle(color:w,fontSize:25),),
                    Text("${vale.height}",style:TextStyle(color:w,fontSize:25),),
                  ],
                ),
                Text("${vale.date}",style:TextStyle(color:w,fontSize:25),),
              ],

            )

          );

        }).toList(),

        ],

      )
    ),

   );
  }

}


