import 'package:app02/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color b = Colors.black;
Color w = Colors.white;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          //height:double.infinity,
          //  width:double.infinity,
          color: b,
          child: ListView.builder(
            itemCount: li.length,
            itemBuilder: (ctx, index) {
              return Padding(
                // margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(4),
                child: Card(
                    color: Colors.purple,
                    shadowColor: Colors.orange,
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
                                style: TextStyle(color: w, fontSize: 25),
                              ),
                              Text(
                                "${li[index].height}",
                                style: TextStyle(color: w, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "${li[index].date}",
                            style: TextStyle(color: w, fontSize: 25),
                          ),
                        ],
                      ),
                    )),
              );
            },
          )),
    );
  }
}
