class Element {
  final int id;
  final int chanceOfPlayingThisRound;
  final int elementType;
  final String firstName;
  final String secondName;
  final int team;

  Element(
      {this.id,
      this.chanceOfPlayingThisRound,
      this.elementType,
      this.firstName,
      this.secondName,
      this.team});

  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
      id: json['id'],
      chanceOfPlayingThisRound: json['chance_of_playing_next_round'],
      elementType: json['element_type'],
      firstName: json['first_name'],
      secondName: json['second_name'],
      team: json['team'],
    );
  }
}
