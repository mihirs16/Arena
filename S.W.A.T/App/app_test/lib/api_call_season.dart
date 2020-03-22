import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

bool debug = false;

class TeamStats {
  int teamID;
  int posTable;
  var scoredRatio;
  var concedRatio;
  int wins;
  int draws;
  int losses;
  int matchesPlayed;
  Match lastPlayedMatch;
  Match upcomingMatch;
}

class Team {
  var teamID;
  var name;
  var imageUrl;

  Team.idOnly (this.teamID);

  Team (
    this.teamID, 
    this.name, 
    this.imageUrl
    );
}

class Match{
  int id;
  Team homeTeam;
  Team awayTeam;
  Team winTeam;
  String status;
  int homeScore;
  int awayScore;
  String dateTime;


}


//---GLOBAL-----
var teamsOfTheSeason = new List<Team>(20);
var teamStatsOfTeams = new List<TeamStats>(20);
var matchesOfSeason = new List<Match>();
//--------------


void fillTeamsOfTheSeason (var leagueTableData, var leagueTeamData) {
  
  print(leagueTeamData);
  for (int i=0;i<teamsOfTheSeason.length;i++) {
    var j;
    for(j=0;leagueTableData[i]['id']!=leagueTeamData[j]['id'];j++) {}
    var team = new Team(
      leagueTableData[i]['id'], 
      leagueTableData[i]['name'].toString(),
      leagueTeamData[j]['image'].toString()
    );
    teamsOfTheSeason[i] = team;

    if (debug)
      print(teamsOfTheSeason[i].imageUrl);
  }
}

void fillMatchOfTheSeason (var leagueMatchData) {
  for (int i=0;i<leagueMatchData.length;i++) {
    var match = new Match();
    match.id = leagueMatchData[i]['id'];
    
    match.homeTeam = new Team.idOnly(leagueMatchData[i]['homeID']);
    for (int i=0;i<teamsOfTheSeason.length;i++) {
      if(teamsOfTheSeason[i].teamID == match.homeTeam.teamID) {
        match.homeTeam.name = teamsOfTheSeason[i].name;
        match.homeTeam.imageUrl = teamsOfTheSeason[i].imageUrl;
        break;
      }
    }

    match.awayTeam = new Team.idOnly(leagueMatchData[i]['awayID']);
    for (int i=0;i<teamsOfTheSeason.length;i++) {
      if(teamsOfTheSeason[i].teamID == match.awayTeam.teamID) {
        match.awayTeam.name = teamsOfTheSeason[i].name;
        match.awayTeam.imageUrl = teamsOfTheSeason[i].imageUrl;
        break;
      }
    }

    match.winTeam = new Team.idOnly(leagueMatchData[i]['winningTeam']);
    for (int i=0;i<teamsOfTheSeason.length;i++) {
      if(teamsOfTheSeason[i].teamID == match.winTeam.teamID) {
        match.winTeam.name = teamsOfTheSeason[i].name;
        match.winTeam.imageUrl = teamsOfTheSeason[i].imageUrl;
        break;
      }
    }

    match.status = leagueMatchData[i]['status'];
    match.homeScore = leagueMatchData[i]['homeGoals'].length;
    match.awayScore = leagueMatchData[i]['awayGoals'].length;
    var dateRetrieved = new DateTime.fromMillisecondsSinceEpoch(leagueMatchData[i]['date_unix']*1000, isUtc: true);
    var formatterDate = new DateFormat('dd-MM-yyyy');
    var formatterTime = new DateFormat('hh:mm:ss');
    match.dateTime = formatterDate.format(dateRetrieved).toString() + " " + formatterTime.format(dateRetrieved);
    matchesOfSeason.add(match);
  }

  if (debug){
    print(matchesOfSeason.length);
  }
    
}

void fillStatsOfTeams (var leagueTableData) {
 if(debug)   
    print(leagueTableData[0]);
  for (int i=0;i<teamsOfTheSeason.length;i++) {
    var teamStats = new TeamStats();
    teamStats.teamID = teamsOfTheSeason[i].teamID;
    teamStats.posTable = i+1;
    teamStats.scoredRatio = leagueTableData[i]['seasonGoals'] / leagueTableData[i]['matchesPlayed'];
    teamStats.concedRatio = (leagueTableData[i]['seasonConceded_away'] + leagueTableData[i]['seasonConceded_home']) / leagueTableData[i]['matchesPlayed'];
    teamStats.wins = leagueTableData[i]['seasonWins_home'] + leagueTableData[i]['seasonWins_away'];
    teamStats.draws = leagueTableData[i]['seasonDraws_home'] + leagueTableData[i]['seasonDraws_away'];
    teamStats.losses = leagueTableData[i]['seasonLosses_away'] + leagueTableData[i]['seasonLosses_home'];
    teamStats.matchesPlayed = teamStats.wins + teamStats.draws + teamStats.losses;

    // for matches of home or away id same as team
    //  last complete + next match
    var matchesOfThisTeam = new List<Match>();
    for (var match in matchesOfSeason) {
      if (match.awayTeam.teamID == teamStats.teamID || match.homeTeam.teamID == teamStats.teamID)
        matchesOfThisTeam.add(match);    
    }

    int j;
    for (j=0;matchesOfThisTeam[j].status == 'complete';j++) {}
    teamStats.lastPlayedMatch = matchesOfThisTeam[j-1];
    teamStats.upcomingMatch = matchesOfThisTeam[j];

    if (debug=true)
      print(teamStats.concedRatio);

    teamStatsOfTeams[i] = teamStats;
  }
}

void setupData () async {

  // fetch api json: league matches
  http.Response respLeagueTeams = await http.get(
    Uri.encodeFull("https://api.footystats.org/league-teams?key=test85g57&league_id=2012"),
    headers: {
      "Accept": "application/json",
    }
  );
  var leagueTeamData = json.decode(respLeagueTeams.body);
  leagueTeamData = leagueTeamData['data'];


  // fetch api json: league table
  http.Response respLeagueTable = await http.get(
    Uri.encodeFull("https://api.footystats.org/league-tables?key=test85g57&league_id=2012"),
    headers: {
      "Accept": "application/json",
    }
  );
  var leagueTableData = json.decode(respLeagueTable.body);
  leagueTableData = leagueTableData['data']['league_table'];


  // fetch api json: league matches
  http.Response respLeagueMatches = await http.get(
    Uri.encodeFull("https://api.footystats.org/league-matches?key=test85g57&league_id=2012"),
    headers: {
      "Accept": "application/json",
    }
  );
  var leagueMatchData = json.decode(respLeagueMatches.body);
  leagueMatchData = leagueMatchData['data'];


  // fill teamsOfTheSeason data
  fillTeamsOfTheSeason(leagueTableData, leagueTeamData);
  
  // fill matchesOfSeason data
  fillMatchOfTheSeason(leagueMatchData);

  // fill teamStatsOfTheSeason data
  fillStatsOfTeams(leagueTableData);
}