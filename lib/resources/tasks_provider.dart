import 'package:todotxt_flutter_app/models/task.dart';

class TasksProvider {
  Future<List<Task>> getTasks(String fileName) async {
    return <Task>[
      Task.fromMap({
        'priority': '(A)',
        'description': 'Let the dogs out @home due:2021-05-28',
      }),
      Task.fromMap({
        'priority': '(B)',
        'description': '+todotxt_flutter_app End app',
      }),

      Task.fromMap({
        'description': 'Do what you want',
      }),
    ];
  }
}
