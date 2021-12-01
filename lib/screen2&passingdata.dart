import 'package:flutter/material.dart';
import 'screen1&passingdata.dart';
import 'drawer.dart';

class Screen2 extends StatelessWidget {
  late String str;
  Screen2(this.str);
  @override
  Widget build(BuildContext context) {
    void selectScreen(BuildContext context,int n){
      Navigator.of(context).pushNamed(
       Screen1.routeName,
      );
    }

    return  Scaffold(
      appBar: AppBar(
        title:Text('Screen2',style:TextStyle(fontSize:30,),),
      ),
      body: Center(

        child:SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                child: Text("Go To Screen 1 ",style: TextStyle(fontSize:25,fontWeight:FontWeight.w600),),
                onTap:()=>selectScreen(context,1) ,
              ),
              Text(str,style: TextStyle(fontSize:30),),
              Image.asset('assets/images/city.jpg',fit:BoxFit.fill,),

            ],
          ),
        ),

      ),
      drawer:MyDarwer(),
    );
  }
}
