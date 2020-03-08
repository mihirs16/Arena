import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { runApp(MyApp());
SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
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
        backgroundColor: Colors.white,
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
              blurRadius: 30.0,
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
       color: Colors.pinkAccent, 
       borderRadius: BorderRadius.all(Radius.circular(15.0)),
       boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 30.0,
            )
          ], 
      ),
      width: 330.0,
      height: 60.0,
     
    ),
    SizedBox(
      height: 40.0
    ),
    Text(
  'Last Played',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
      height: 10.0
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
              blurRadius: 30.0,
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
              offset: Offset(0.0, 0.0),
              spreadRadius: 1.0,
              blurRadius: 10.0,
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