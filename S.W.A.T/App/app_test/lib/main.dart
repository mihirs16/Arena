import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { runApp(MyApp());
SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white10, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white10, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arena',
      home: Scaffold(
        body: Center(
  child: Column(
  children: [
     SizedBox(
      height: 150.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.greenAccent,
       borderRadius: BorderRadius.all(Radius.circular(15.0)), 
       boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 15.0,
            )
          ],
      ),
      
      width: 330.0,
      height: 200.0,
     
    ),
    SizedBox(
      height: 50.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.redAccent[400], 
       borderRadius: BorderRadius.all(Radius.circular(15.0)),
       boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 15.0,
            )
          ], 
      ),
      width: 330.0,
      height: 60.0,
     
    ),
    SizedBox(
      height: 50.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.greenAccent, 
       borderRadius: BorderRadius.all(Radius.circular(15.0)),
       boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 15.0,
            )
          ], 
      ),
      width: 330.0,
      height: 200.0,
    ),
     SizedBox(
      height: 50.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.greenAccent, 
       borderRadius: BorderRadius.all(Radius.circular(15.0)), 
       boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 15.0,
            )
          ],
      ),
      width: 330.0,
      height: 60.0,
    ),
  ],
)
      ),
      ),
    );
  }
}
