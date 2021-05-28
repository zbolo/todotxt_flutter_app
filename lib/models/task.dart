class Task {
  late String? priority;
  late String description;

  Task();

  Task.fromMap(Map<String, dynamic> map) {
    priority = map['priority'];
    description = map['description'];
  }
}
