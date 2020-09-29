class Phase {
  final int id;
  final String name;
  final int startEvent;
  final int stopEvent;

  Phase({this.id, this.name, this.startEvent, this.stopEvent});

  factory Phase.fromJson(Map<String, dynamic> json) {
    return Phase(
      id: json['id'],
      name: json['name'],
      startEvent: json['start_event'],
      stopEvent: json['stop_event'],
    );
  }
}
