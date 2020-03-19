import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'api_call_season.dart';

var teamData;

void main() async { 
  print('Retrieving All Pre-data..');
  teamData = await getTeamDataAtStart();
  
  for (int i=0;i<teamData.length;i++)
    print(teamData[i].name);
  
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, //top bar color
        statusBarIconBrightness: Brightness.dark, //top bar icons
        systemNavigationBarColor: Colors.white, //bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
      )
    );
}

int team;
String teamlogo;

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arena',
      home: TeamSelect(),
      routes: <String, WidgetBuilder> {
      '/Baseapp' : (context) => Baseapp(),
      '/TeamSelect' : (context) => TeamSelect()
      },
    );
  }
}


class TeamSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Select A Team :",
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w400,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(teamData[0].imageUrl),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 1;
              teamlogo = teamData[0].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[1].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 2;
              teamlogo = teamData[1].imageUrl;
            },
          ),
            ],
          ),
         SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[2].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 3;
              teamlogo = teamData[2].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[3].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 4;
              teamlogo = teamData[3].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[4].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 5;
              teamlogo = teamData[4].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[5].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 6;
              teamlogo = teamData[5].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[6].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 7;
              teamlogo = teamData[6].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[7].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 8;
              teamlogo = teamData[7].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[8].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 9;
              teamlogo = teamData[8].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[9].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 10;
              teamlogo = teamData[9].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[10].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 11;
              teamlogo = teamData[10].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[11].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 12;
              teamlogo = teamData[11].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[12].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 13;
              teamlogo = teamData[12].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[13].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 14;
              teamlogo = teamData[13].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[14].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 15;
              teamlogo = teamData[14].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[15].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 16;
              teamlogo = teamData[15].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[16].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 17;
              teamlogo = teamData[16].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[17].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 18;
              teamlogo = teamData[17].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Text(teamData[18].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 19;
              teamlogo = teamData[18].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text(teamData[19].name),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 20;
              teamlogo = teamData[19].imageUrl;
            },
          ),
            ],
          ),
          
        ]
        )
      ),
    );
  }
}


class Baseapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
  child: Column(
  children: [
     SizedBox(
            height: 40.0
          ),
     FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/TeamSelect');
      },
      child: Image.network(
        teamlogo,
        height: 70,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      
    ), 
SizedBox(
            height: 20.0
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
      width: 85.0
    ),
    
    SizedBox(
      width: 80.0
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
  ],
)
      ),
      );
  }
}

