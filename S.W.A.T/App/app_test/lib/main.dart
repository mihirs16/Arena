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

final String liverpooliconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Liverpool_FC.svg/180px-Liverpool_FC.svg.png';
final String arsenaliconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/170px-Arsenal_FC.svg.png';
final String astoniconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Aston_Villa_FC_crest_%282016%29.svg/150px-Aston_Villa_FC_crest_%282016%29.svg.png';
final String bournemouthiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e5/AFC_Bournemouth_%282013%29.svg/170px-AFC_Bournemouth_%282013%29.svg.png';
final String brightoniconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Brighton_%26_Hove_Albion_logo.svg/200px-Brighton_%26_Hove_Albion_logo.svg.png';
final String burnleyiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Burnley_F.C._Logo.svg/180px-Burnley_F.C._Logo.svg.png';
final String chelseaiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/180px-Chelsea_FC.svg.png';
final String crystaliconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Crystal_Palace_FC_logo.svg/170px-Crystal_Palace_FC_logo.svg.png';
final String evertoniconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Everton_FC_logo.svg/180px-Everton_FC_logo.svg.png';
final String leicestericonurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2d/Leicester_City_crest.svg/180px-Leicester_City_crest.svg.png';
final String mancityiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/180px-Manchester_City_FC_badge.svg.png';
final String manunitediconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/180px-Manchester_United_FC_crest.svg.png';
final String newcastleiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Newcastle_United_Logo.svg/200px-Newcastle_United_Logo.svg.png';
final String norwichiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Norwich_City.svg/150px-Norwich_City.svg.png';
final String sheffieldiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9c/Sheffield_United_FC_logo.svg/180px-Sheffield_United_FC_logo.svg.png';
final String southamptoniconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/FC_Southampton.svg/180px-FC_Southampton.svg.png';
final String spuriconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/110px-Tottenham_Hotspur.svg.png';
final String watfordiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Watford.svg/190px-Watford.svg.png';
final String westhamiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/West_Ham_United_FC_logo.svg/185px-West_Ham_United_FC_logo.svg.png';
final String wolvesiconurl = 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/Wolverhampton_Wanderers.svg/200px-Wolverhampton_Wanderers.svg.png';





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
            child: Text("Arsenal"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 1;
              teamlogo = arsenaliconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Aston"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 2;
              teamlogo = astoniconurl;
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
            child: Text("Bourne"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 3;
              teamlogo = bournemouthiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Brighton"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 4;
              teamlogo = brightoniconurl;
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
            child: Text("Burnley"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 5;
              teamlogo = burnleyiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Chelsea"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 6;
              teamlogo = chelseaiconurl;
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
            child: Text("Crystal"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 7;
              teamlogo = crystaliconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Everton"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 8;
              teamlogo = evertoniconurl;
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
            child: Text("Leicester"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 9;
              teamlogo = leicestericonurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Liverpool"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 10;
              teamlogo = liverpooliconurl;
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
            child: Text("ManCity"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 11;
              teamlogo = mancityiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("ManU"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 12;
              teamlogo = manunitediconurl;
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
            child: Text("NewCast"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 13;
              teamlogo = newcastleiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Norwich"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 14;
              teamlogo = norwichiconurl;
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
            child: Text("Sheffield"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 15;
              teamlogo = sheffieldiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Southam"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 16;
              teamlogo = southamptoniconurl;
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
            child: Text("Spur"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 17;
              teamlogo = spuriconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Watford"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 18;
              teamlogo = watfordiconurl;
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
            child: Text("WestHam"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 19;
              teamlogo = westhamiconurl;
            },
          ),
          SizedBox(
            width: 90.0,
          ),
          RaisedButton(
            child: Text("Wolves"),
            color: Colors.greenAccent,
            onPressed: (){
              Navigator.pushNamed(context, '/Baseapp');
              team = 20;
              teamlogo = wolvesiconurl;
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

