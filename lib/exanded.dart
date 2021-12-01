import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Flutter APP',
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomePage> {
  var _SelectDate;
  void _datePicker(){
    showDatePicker(context: context,
      initialDate: DateTime.utc(2018,2,9),
      firstDate: DateTime(2018),
      lastDate:DateTime.now(),
    ).then((value){
      if(value==null){return;}
      setState(() {
        _SelectDate=value;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('App02'),
      ),
      body:Container(
        //margin: EdgeInsets.all(45),
       child: Container(
         child: Column(
           children: [
              Row(
               children: [
                 Expanded(
                   flex:1,
                   child: Container(
                     padding:EdgeInsets.all(30),
                     color:Colors.pink,
                     child:Text('1'),
                   ),
                 ),
                 Expanded(
                   flex:1,
                   child: Container(
                     padding:EdgeInsets.all(30),
                     color:Colors.green,
                     child:Text('2'),
                   ),
                 ),
                 Expanded(
                   flex:1,
                   child: Container(
                     padding:EdgeInsets.all(30),
                     color:Colors.orange,
                     child:Text('3'),

                   ),
                 ),
               ],
             ),
             Container(
               //height: double.infinity,
               width:double.infinity,
               //margin: EdgeInsets.all(),
               child: Row(
                 //mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/images/xss.jpg',fit:BoxFit.cover,width:500,height:619,),
                 ],
               ),
             ),
           ],


         ),
       ),
      ),
    );
  }
}
