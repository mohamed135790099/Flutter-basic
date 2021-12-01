import 'dart:js';
import 'package:flutter/material.dart';
import 'screen2&passingdata.dart';
import 'drawer.dart';
class Screen1 extends StatelessWidget {
  static const routeName='/my_screen1_category';


  void selectScreen(BuildContext context,int n){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_){
          return Screen2('information2');
        })
    );

  }

  @override
  Widget build(BuildContext context) {
    final RouteArg=ModalRoute.of(context)!.settings.arguments as Map<String,Object>;

    return Scaffold(
        appBar: AppBar(
          title:Text('Screen1',style:TextStyle(fontSize:30,),),
        ),
        body: Container(
          //width: double.infinity,
          //height: double.infinity,
          child:SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${RouteArg.cast()['id']}",style:TextStyle(fontSize:30,)),
                Text(RouteArg.cast()['title'].toString(),style:TextStyle(fontSize:30,)),
                //Text(str,style: TextStyle(fontSize:30),),
                InkWell(
                  child: Text("Go To Screen 2 ",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
                  onTap:()=>selectScreen(context,2) ,
                ),
                Image.asset('assets/images/xss.jpg',fit:BoxFit.cover,width:650,height:632,),
              ],
            ),
          ),

        ),
        drawer:MyDarwer(),
      floatingActionButton:FloatingActionButton(
        child:  Icon(Icons.delete),
        onPressed:(){
          Navigator.of(context).pop(RouteArg);
        },
      ),
    );
  }
}
