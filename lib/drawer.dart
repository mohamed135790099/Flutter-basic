import 'package:flutter/material.dart';
import 'screen1&passingdata.dart';
import 'screen2&passingdata.dart';
import 'main_muilt_scanners.dart';
class MyDarwer extends StatelessWidget {
  static var str;
  static void selectScreen(BuildContext context,int n){
    if(n==1) {
      Navigator.of(context).pushNamed(
        Screen1.routeName,
        arguments: {
          'id': 10,
          'title': "Info1",
        },
      ).then((value){
        str=value;
        print(str);
      });
    }
    else if(n==2){
      Navigator.of(context).pushReplacementNamed(
       '/x2',
        arguments:{
          'id':20,
          'title':"Info2",
        },
      );
    }
    else{
      Navigator.of(context).pushReplacementNamed(
        '/',
        arguments:{
          'id':30,
          'title':"Info",
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Go To Main Screen ",style: TextStyle(fontSize:25,),),
            subtitle:Text('Go To Main Screen'),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
            onTap:()=>selectScreen(context,0) ,
          ),
          ListTile(
            title: Text("Go To Screen 1",style: TextStyle(fontSize:35,),),
            subtitle:Text('very good screen'),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
            onTap:()=>selectScreen(context,1) ,
          ),
          ListTile(
            title: Text("Go To Screen 2",style: TextStyle(fontSize:35,),),
            trailing:Icon(Icons.arrow_forward_ios),
            subtitle: Text('very Nice screen'),
            onTap:()=>selectScreen(context,2) ,
          ),
        ],
      ),
    );
  }
}
