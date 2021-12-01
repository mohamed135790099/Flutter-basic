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
        //height:double.infinity,
         width: double.infinity,
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              RaisedButton(
                padding: EdgeInsets.symmetric(vertical:30,horizontal:40),
                child: Text('App02',style:TextStyle(color:Colors.white,fontSize:30),),
                color: Colors.black,
                onPressed: _datePicker,
              ),
               SizedBox(height:40,),
               RaisedButton(
                padding: EdgeInsets.symmetric(vertical:30,horizontal:40),
                child: Text("$_SelectDate",style:TextStyle(color:Colors.white,fontSize:30),),
                color: Colors.black,
                onPressed: (){},
              ),

          ],
        ),
      ),
    );
  }
}
