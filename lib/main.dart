import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class  MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myColor = Colors.red;
  bool myState = true;

  void change()=>{ myState = !myState,
    setState(()=> {myColor = myState ? Colors.red:Colors.blue})};
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          backgroundColor: myColor,
          body: Container(),
          floatingActionButton: FloatingActionButton(
            onPressed: change,
            child: Icon(Icons.brush, color: Colors.black),
            backgroundColor: Colors.white,
          ),
        )
    ) ;
  }
}





