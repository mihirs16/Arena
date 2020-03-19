import 'dart:convert';
import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Team {
  var id;
  var name;
  var imageUrl;
}

class APICall extends StatefulWidget {
  @override
  APICallState createState() => new APICallState();
}

class APICallState extends State<APICall> {
  
  Future<List<Team>> getTeamDataAtStart() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://api.footystats.org/league-teams?key=test85g57&league_id=2012"),
      headers: {
       "Accept": "application/json",
      }
    );

    //print(response.body);
    var data = json.decode(response.body);
    var _data = data['data'];
    
    var teams = new List<Team>();
    for (int i=0;i<_data.length;i++) {
      var team = new Team();
      team.id = _data[i]['id'];
      team.name = _data[i]['name'].toString();
      team.imageUrl = _data[i]['image'].toString();
      teams.add(team);
      //print(team.id.toString() + " " + team.name + " " + team.imageUrl);
    }
    for (int i=0;i<teams.length;i++)
      print(teams[i].name);             //UNCOMMENT 48 and 49 for debug
    return teams;
  }

  @override
  Widget build(BuildContext context){
    return new RaisedButton(
      child: new Text("Get data!", style: new TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 20.0)),
      onPressed: getTeamDataAtStart
    );
  }
}