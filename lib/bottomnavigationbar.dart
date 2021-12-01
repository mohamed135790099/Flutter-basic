import 'package:flutter/material.dart';
import 'screen1&passingdata.dart';
import 'screen2&passingdata.dart';
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
        '/x1':(context)=>Screen1(),
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
  void selectScreen(BuildContext context,int n){
    Navigator.of(context).pushNamed(
      n==1?'/x1':'/x2',
      arguments:{
        'id':10,
        'title':"Info1",
      },
    );
  }
  List<Map<String,Object>>_Pages=[
    {
    'page':
      Scaffold(
      appBar: AppBar(title: Text("Part 1"),),
      body: Center(
        child: Text('Text 1', style: TextStyle(fontSize: 30),),
      ),
    ),
      'title':'Part 1',
    },
    {
    'page': Scaffold(
      appBar: AppBar(title: Text("Part 2"),),
      body: Center(
        child: Text('Text 2', style: TextStyle(fontSize: 30),),
      ),
    ),
      'title': 'Part 2',
    },
  ];

  int _selectedPageIndex=0;
  void _x1(int index){
    setState(() {
      _selectedPageIndex=index;
    });
  }


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
          title:Text( _Pages[_selectedPageIndex].cast()['title'],style:TextStyle(fontSize:30,),),
           /*bottom: TabBar(
            tabs: [
              Tab(icon:Icon(Icons.category,),text:("Part 1")),
              Tab(icon:Icon(Icons.star),text:("Part 2")),
            ],
          ),
            */
        ),
        body: _Pages[_selectedPageIndex].cast()['page'],

       /* bottomNavigationBar:BottomNavigationBar(
          backgroundColor:Colors.deepPurple,
          selectedItemColor:Colors.black,
          unselectedItemColor:Colors.white,
          currentIndex:_selectedPageIndex,
          selectedFontSize:20,
          unselectedFontSize:10,
          onTap:_x1,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.category),title:Text('part 1'),),
            BottomNavigationBarItem(icon:Icon(Icons.star),title:Text('part 2')),
          ],
        ),
        */
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor:Colors.black,
          unselectedItemColor:Colors.white,
          currentIndex:_selectedPageIndex,
          selectedFontSize:20,
          unselectedFontSize:10,
          type:BottomNavigationBarType.shifting,
          onTap:_x1,
          items: [
            BottomNavigationBarItem(backgroundColor:Colors.deepPurple,icon:Icon(Icons.category),title:Text('part 1'),),
            BottomNavigationBarItem(backgroundColor:Colors.deepPurple,icon:Icon(Icons.star),title:Text('part 2')),
          ],
        ),
        drawerScrimColor:Colors.green.withOpacity(0.4),
        drawer: Drawer(
          child: ListView(
            children: [
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
        ),
      ),
    );
  }
}