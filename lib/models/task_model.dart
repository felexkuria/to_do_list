class Task {
  int id;
  String title;
  DateTime date;
  String priority;
  int status;
  Task.withId({this.id, this.title, this.status, this.date, this.priority});
  Task({this.title, this.status, this.date, this.priority});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }

    map['id'] = id;
    map['title'] = title;
    map['date'] = date.toIso8601String();
    map['priority'] = priority;
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
      id: map['id'],
      title: map['title'],
      date: DateTime.parse(map['date']),
      status: map['status'],
      priority: map['priority'],
    );
  }
}
