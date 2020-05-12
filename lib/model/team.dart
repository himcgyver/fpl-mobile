class Team {
  final int id;
  final String name;
  final String shortName;

  Team({this.id, this.name, this.shortName});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      shortName: json['short_name'],
    );
  }
}
