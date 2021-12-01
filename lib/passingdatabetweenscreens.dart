import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen1&passingdata.dart';
import 'screen2&passingdata.dart';
import 'drawer.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      //home:MyHomePage(),
      routes: {
        '/':(context)=>MyHomePage(),
        Screen1.routeName:(context)=>Screen1(),
       '/x2':(context)=>Screen2('passing data between screen 2'),
      },
    );
  }

}
class MyHomePage extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  //the second method two passing data between two screens
 /*
 void selectScreen(BuildContext context,int n){
    Navigator.of(context).pushNamed(
      n==1? Screen1.routeName:'/x2',
      arguments:{
        'id':n==1?10:20,
        'title':n==1?"Info1":"Info2",
      },
    );
  }
*/
  /*
  //  first method to send data between two screen

  void selectScreen(BuildContext context,int n){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_){
          if(n==1) return Screen1('passing data between screen 1');
          return Screen2('passing data between screen 2');
        })
    );
  }
  /
   */
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        appBar: AppBar(
          title:Text('Main Screen',style:TextStyle(fontSize:30,),),
          bottom: TabBar(
            tabs: [
              Tab(icon:Icon(Icons.category,),text:("Part 1")),
              Tab(icon:Icon(Icons.star),text:("Part 2")),
            ],
          ),
        ),
        body:
        TabBarView(
          children: [
          Scaffold(
            appBar:AppBar(title:Text("Part 1"),),
            body: Center(
              child: Text('Text 1',style: TextStyle(fontSize:30),),
            ),
          ),
          Scaffold(
            appBar:AppBar(title:Text("Part 2"),),
            body: Center(
                child: Text('Text 1',style: TextStyle(fontSize:30),),
              ),
            )
          ],

        ),
        drawerScrimColor:Colors.green.withOpacity(0.4),
        drawer:MyDarwer(),

      ),
    );
  }
}