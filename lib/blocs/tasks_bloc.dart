import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:todotxt_flutter_app/models/task.dart';
import 'package:todotxt_flutter_app/resources/repository.dart';

class TasksBloc {
  final _repository = Repository();
  final _tasks = BehaviorSubject<List<Task>>();

  Stream<List<Task>> get tasks => _tasks.stream;

  void getTasks({String fileName = 'inbox'}) async {
    try {
      final data = await _repository.getTasks(fileName);
      if (data.length > 0) {
        _tasks.sink.add(data);
      } else {
        _tasks.sink.add([]);
      }
    } catch (ex, stackTrace) {
      print(ex);
      print(stackTrace);
    }
  }

  void dispose() async {
    await _tasks.drain();
    _tasks.close();
  }
}
