import 'dart:convert';
import 'dart:async';
import 'dart:ffi';
import 'package:http/http.dart' as http;

class TeamStats {
  int teamID;
  int posTable;
  String last5rec;
  Float scoredRatio;
  Float concedRatio;
  Match lastPlayedMatch;
  Match upcomingMatch;

  TeamStats(var decodedJsonResponse) {
    //parse and save from json
  }
}

class Team {
  var teamID;
  var name;
  var imageUrl;

  Team(var decodedJsonResponse) {
    //parse and save from json
  }
}

class Match{
  int id;
  Team homeTeam;
  Team awayTeam;
  int status;
  int homeScore;
  int awayScore;
  DateTime dateTime;

  Match(var decodedJsonResponse) {
    //parse and save from json
  }
}


//---GLOBAL-----
var teamsOfTheSeason = new List<Team>(20);
var teamStatsOfTeams = new List<TeamStats>(20);


Future<List<Team>> getTeamDataAtStart() async {
  print('Fetching Season Contenders..');
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
  //for (int i=0;i<teams.length;i++)
  //  print(teams[i].name);             //UNCOMMENT 48 and 49 for debug
  return teams;
}

void getMatchData() async {
  print('Fetching Match..');
  http.Response response = await http.get(
    Uri.encodeFull("https://api.footystats.org/league-tables?key=test85g57&league_id=2012"),
    headers: {
      "Accept": "application/json",
    }
  );

  var _league_matches = json.decode(response.body);
  print(_league_matches['data']['league_table'][0]);
  // var league_matches = _league_matches['data'];
  
  // var match = new Match();
  // match.id = league_matches[0]['id'];

  // print(league_matches[0]['homeID']);
  // print(league_matches[0]['awayID']);
}