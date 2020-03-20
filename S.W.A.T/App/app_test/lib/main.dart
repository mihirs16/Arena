import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'api_call_season.dart';

void main() async { 
  if (debug)
    print('Retrieving All Pre-data..');
  await setupData();

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
      appBar: AppBar(
        title: Text(
          "Select Your Favourite Team :",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
          color: Colors.grey[800]
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 10, top: 5),
        children: [
          
          
          SizedBox(
            height: 19.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[0].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            highlightElevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 0;
              teamlogo = teamsOfTheSeason[0].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[1].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 1;
              teamlogo = teamsOfTheSeason[1].imageUrl;
            },
          ),
            ],
          ),
         SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[2].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 2;
              teamlogo = teamsOfTheSeason[2].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[3].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 3;
              teamlogo = teamsOfTheSeason[3].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[4].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 4;
              teamlogo = teamsOfTheSeason[4].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[5].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 5;
              teamlogo = teamsOfTheSeason[5].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[6].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 6;
              teamlogo = teamsOfTheSeason[6].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[7].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 7;
              teamlogo = teamsOfTheSeason[7].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child:Image.network(
              teamsOfTheSeason[8].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 8;
              teamlogo = teamsOfTheSeason[8].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[9].imageUrl,
              height: 50,
            ),
           color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 9;
              teamlogo = teamsOfTheSeason[9].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[10].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 10;
              teamlogo = teamsOfTheSeason[10].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[11].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 11;
              teamlogo = teamsOfTheSeason[11].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[12].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 12;
              teamlogo = teamsOfTheSeason[12].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[13].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 13;
              teamlogo = teamsOfTheSeason[13].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[14].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 14;
              teamlogo = teamsOfTheSeason[14].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[15].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 15;
              teamlogo = teamsOfTheSeason[15].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[16].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 16;
              teamlogo = teamsOfTheSeason[16].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[17].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 17;
              teamlogo = teamsOfTheSeason[17].imageUrl;
            },
          ),
            ],
          ),
          SizedBox(
            height: 27.0,
          ),
          Row(
            children: [
              SizedBox(
            width: 70.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[18].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 18;
              teamlogo = teamsOfTheSeason[18].imageUrl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Image.network(
              teamsOfTheSeason[19].imageUrl,
              height: 50,
            ),
            color: Colors.transparent,
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 19;
              teamlogo = teamsOfTheSeason[19].imageUrl;
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
  child: ListView(
    padding: EdgeInsets.only(bottom: 15, top: 0, left: 30, right: 30),
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
      fontSize: 16.0,
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
      fontSize: 10.0,
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
      height: 45.0
    ),
    Row(
     children: [
       SizedBox(
      width: 25.0
    ),
    Text(
  'Team',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
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
      fontWeight: FontWeight.w400,
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
      fontWeight: FontWeight.w400,
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
      width: 25.0
    ),
         Text(
  'CHE',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w800,
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
      fontWeight: FontWeight.w800,
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
      fontWeight: FontWeight.w800,
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
      fontSize: 16.0,
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
      fontSize: 10.0,
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
            width: 90.0
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
      height: 49.0
    ),
    
  ],
)
      ),
      );
  }
}

