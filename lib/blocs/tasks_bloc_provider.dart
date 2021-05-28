import 'package:flutter/material.dart';
import 'tasks_bloc.dart';

export 'tasks_bloc.dart';

class TasksBlocProvider extends InheritedWidget {
  final bloc = TasksBloc();

  TasksBlocProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static TasksBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<TasksBlocProvider>()
        !.bloc;
  }
}
