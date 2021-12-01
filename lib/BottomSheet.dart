import 'package:app02/info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(MyApp());
}

Color b = Colors.black;
Color w = Colors.white;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.pink ,
        accentColor: Colors.green ,
        fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily:'OpenSans',
                fontSize: 25,
                color: Colors.white,
              )
          ),
        appBarTheme:AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                    fontFamily:'Quicksand',
                    fontSize: 45,
                  )
              )
          ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Info> li = [
    Info(name: "mohamed", height: 175, date: DateTime.now()),
    Info(name: "mohamed1", height: 180, date: DateTime.now()),
    Info(name: "mohamed2", height: 185, date: DateTime.now()),
    Info(name: "mohamed3", height: 190, date: DateTime.now()),
    Info(name: "mohamed4", height: 195, date: DateTime.now()),
    Info(name: "mohamed5", height: 195, date: DateTime.now()),
    Info(name: "mohamed6", height: 195, date: DateTime.now()),
    Info(name: "mohamed7", height: 195, date: DateTime.now()),
    Info(name: "mohamed8", height: 195, date: DateTime.now()),
  ];
  void x(BuildContext context){
    showModalBottomSheet(context: context, builder: (_){
      return ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, index) {
          return Container(
            // margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(4),
            child: Card(
                color:Theme.of(context).primaryColor,
                shadowColor: Colors.pink,
                elevation: 154,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${li[index].name}",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "${li[index].height}",
                            style: TextStyle(color: w, fontSize: 25),
                          ),
                        ],
                      ),
                      Text(
                        "${DateFormat().format((li[index]).date)}",
                        style: TextStyle(color: w, fontSize: 25),
                      ),
                    ],
                  ),
                )),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(

        height:double.infinity,
        //width:double.infinity,
          color: b,
        child: SingleChildScrollView(
          child: Column(
            children: [
           Image.network('https://www.pbs.org/wnet/nature/files/2019/07/Super-Hummingbirds-2-1280x675.jpg',fit:BoxFit.fill,),
           Image.asset('assets/images/xss.jpg',fit:BoxFit.fill,width:500,height:400,)
      ],
          ),
        ),
    ),
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        onPressed:()=>x(context),
    ),
    );

  }
}
