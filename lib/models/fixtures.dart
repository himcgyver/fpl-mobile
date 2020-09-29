class FixtureList {
  final List<Fixture> fixtures;

  FixtureList({
    this.fixtures,
  });

  factory FixtureList.fromJson(List<dynamic> json) {
    List<Fixture> fixtures = List<Fixture>();
    fixtures = json.map((e) => Fixture.fromJson(e)).toList();

    return FixtureList(fixtures: fixtures);
  }
}

class Fixture {
  final bool finished;
  final String kickoffTime;
  final int teamA;
  final int teamH;
  final int teamScoreA;
  final int teamScoreH;

  Fixture({
    this.finished,
    this.kickoffTime,
    this.teamA,
    this.teamH,
    this.teamScoreA,
    this.teamScoreH,
  });

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      finished: json['finished'],
      kickoffTime: json['kickoff_time'],
      teamA: json['team_a'],
      teamH: json['team_h'],
      teamScoreA: json['team_a_score'],
      teamScoreH: json['team_h_score'],
    );
  }
}
