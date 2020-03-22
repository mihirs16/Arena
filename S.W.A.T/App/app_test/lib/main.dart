import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'api_call_season.dart';

void main() async { 
  if (debug)
    print('Retrieving All Pre-data..');
  await setupData(); //ignore the 'Future' warning

  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle (
      SystemUiOverlayStyle (
        statusBarColor: Colors.white, //top bar color
        statusBarIconBrightness: Brightness.light, //top bar icons
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
      '/TeamSelect' : (context) => TeamSelect(),
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
     RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/TeamSelect');

        
      },
      child: Image.network(
        teamlogo,
        height: 80,
      ),
      color: Colors.transparent,
      elevation: 0,
      
    ),
    SizedBox(
      height: 15
    ),
    Text(
   teamsOfTheSeason[team].name,
   textAlign: TextAlign.center,
   style: TextStyle(
     fontFamily: 'Comfortaa',
     fontSize: 15,
     fontWeight: FontWeight.w600,
     color: Colors.grey[800],
   ),
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
      height: 540.0,
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
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[800],
      fontFamily: 'Comfortaa'
      )
    ),
    SizedBox(
            height: 25.0
          ),
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Matches",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            width: 145,
          ),
              Text(
            (teamStatsOfTeams[team].matchesPlayed).toString(),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
   SizedBox(
            height: 15.0
          ),
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Won",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            width: 200,
          ),
              Text(
            teamStatsOfTeams[team].wins.toString(),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
    SizedBox(
            height: 15.0
          ),
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Lost",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
           width: 202,
    
          ),
              Text(
            teamStatsOfTeams[team].losses.toString(),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
    SizedBox(
            height: 15.0
          ),
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Draws",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
           width: 177,
    
          ),
              Text(
            teamStatsOfTeams[team].draws.toString(),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
    SizedBox(
            height: 15.0
          ),
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Scored",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
           width: 144,
    
          ),
              Text(
            teamStatsOfTeams[team].scoredRatio.toStringAsFixed(2),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
    SizedBox(
            height: 15.0
          ),
          
    Container(
      decoration: BoxDecoration(
       color: Colors.tealAccent[700],
       borderRadius: BorderRadius.all(Radius.circular(8.0)), 
        boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0.0, 2.0),
              spreadRadius: -7.0,
              blurRadius: 10.0,
            )
          ],
      ),
      
      width: 315.0,
      height: 60.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Text(
            "Conceded",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
           width: 104,
    
          ),
              Text(
             teamStatsOfTeams[team].concedRatio.toStringAsFixed(2),
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w300,
            ),
          ),
           SizedBox(
            width: 10,
          ),
        ],
      ),
    
     
    ),
        ],
      ),
     
    ),
    SizedBox(
      height: 45.0
    ),
   
    SizedBox(
      height: 10.0
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
      
      width: 315.0,
      height: 135.0,
      child:Column(children: <Widget>[
        SizedBox(
      height: 10.0
    ),
        Text(
   "Upcoming Match",
   textAlign: TextAlign.center,
   style: TextStyle(
      fontSize: 16.0,
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w600,
      color: Colors.black,
      )
    ),
    SizedBox(
      height: 10.0
    ),
         Row(
        children: <Widget>[
          SizedBox(
            width: 25,
          ),
          Image.network(
            teamStatsOfTeams[team].upcomingMatch.homeTeam.imageUrl,
            height: 60,
          ),
          SizedBox(
            width: 45,
          ),
         Text("- VS -",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 40,
           fontWeight: FontWeight.w200

         ),),
         SizedBox(
            width: 45,
          ),
           Image.network(
            teamStatsOfTeams[team].upcomingMatch.awayTeam.imageUrl,
            height: 60,
          ),
        ],
      ),
       SizedBox(
      height: 20.0
    ),
      Text(
        teamStatsOfTeams[team].upcomingMatch.dateTime.toString(),
        style: TextStyle(
          fontSize: 10
        ),
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

