import 'package:todotxt_flutter_app/resources/tasks_provider.dart';
import 'package:todotxt_flutter_app/models/task.dart';

class Repository {
  final _tasksProvider = TasksProvider();

  Future<List<Task>> getTasks(String fileName) => _tasksProvider.getTasks(fileName);
}
