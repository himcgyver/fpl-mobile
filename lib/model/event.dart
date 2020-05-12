class Event {
  final int id;
  final String name;
  final String deadlineTime;
  final int averageEntryScore;
  final bool finished;
  final bool isCurrent;

  Event(
      {this.id,
      this.name,
      this.deadlineTime,
      this.averageEntryScore,
      this.finished,
      this.isCurrent});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      name: json['name'],
      deadlineTime: json['deadline_time'],
      averageEntryScore: json['average_entry_score'],
      finished: json['finished'],
      isCurrent: json['is_current'],
    );
  }
}
