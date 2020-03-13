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
      height: 130.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.greenAccent,
       borderRadius: BorderRadius.all(Radius.circular(15.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 7.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 330.0,
      height: 200.0,
      child: Column(
        children: [
          SizedBox(
            height: 7.0
          ),
          Text(
  'Premier League',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 22.0,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      color: Colors.grey[800],
      )
    ),
    SizedBox(
            height: 2.0
          ),
    Text(
  '2019 - 2020',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
            height: 25.0
          ),
    Row(
      children: [
        SizedBox(
            width: 100.0
          ),
      Text(
  '5',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
            width: 25.0
          ),
          Text(
  '-',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
            width: 25.0
          ),
          Text(
  '4',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
      ],
    ),
    SizedBox(
            height: 30.0
          ),
    Row(
      children: [
        SizedBox(
            width: 15.0
          ),
Text(
  '10/02/2020',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
            width: 230.0
          ),
        Text(
  '53',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),  
      ],
    ),
        ],
      ),
     
    ),
    SizedBox(
      height: 50.0
    ),
    Row(
     children: [
       SizedBox(
      width: 60.0
    ),
    Text(
  'Team',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w800,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
      width: 98.0
    ),
     Text(
  'Points',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w800,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
      width: 95.0
    ),
     Text(
  'Rank',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w800,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     ],
    ),
    SizedBox(
      height: 5.0
    ),
    Container(
      decoration: BoxDecoration(
       color: Colors.pinkAccent, 
       borderRadius: BorderRadius.all(Radius.circular(15.0)),
       boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 7.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ], 
      ),
      width: 330.0,
      height: 60.0,
      child: Row(  
        children: [
          SizedBox(
      width: 20.0
    ),
         Text(
  'CHE',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
      width: 100.0
    ),
    Text(
  '39',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'Comfortaa'
      )
    ), 
    SizedBox(
      width: 105.0
    ),
    Text(
  '05',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'Comfortaa'
      )
    ),
        ],
      ),
     
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
              color: Colors.black87,
              offset: Offset(0.0, 7.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ], 
      ),
      width: 330.0,
      height: 200.0,
      child: Column(
        children: [
          SizedBox(
            height: 7.0
          ),
          Text(
  'Premier League',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 22.0,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      color: Colors.grey[800],
      )
    ),
    SizedBox(
            height: 2.0
          ),
    Text(
  '2019 - 2020',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
            height: 25.0
          ),
    Row(
      children: [
        SizedBox(
            width: 100.0
          ),
      Text(
  '4',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
            width: 25.0
          ),
          Text(
  '-',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
            width: 25.0
          ),
          Text(
  '0',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w200,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
      ],
    ),
    SizedBox(
            height: 30.0
          ),
    Row(
      children: [
        SizedBox(
            width: 15.0
          ),
Text(
  '03/02/2020',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
     SizedBox(
            width: 230.0
          ),
        Text(
  'FT',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),  
      ],
    ),
        ],
      ),
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
              color: Colors.black87,
              offset: Offset(0.0, 7.0),
              spreadRadius: -7.0,
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