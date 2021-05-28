import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todotxt_flutter_app/blocs/tasks_bloc_provider.dart';
import 'package:todotxt_flutter_app/models/task.dart';
import 'package:todotxt_flutter_app/utils/widget_utils.dart';

class TaskList extends StatefulWidget {
  TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late TasksBloc _tasksBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tasksBloc = TasksBlocProvider.of(context);
    _tasksBloc.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Task>>(
      stream: _tasksBloc.tasks,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return PlatformLoader();
        }

        if (snapshot.hasError) {
          WidgetUtils.showStreamErrorMessage(snapshot.error.toString());
        }

        final List<Task> tasks = snapshot.data as List<Task>;

        if (tasks.length == 0) {
          return Center(
            child: Text('No tasks'),
          );
        }

        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Card(
                elevation: 5.0,
                margin: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  child: (tasks[index].priority != null)
                      ? ListTile(
                          leading: CircleAvatar(
                            child: Text('${tasks[index].priority}'),
                          ),
                          title: Text(tasks[index].description),
                        )
                      : ListTile(
                          title: Text(tasks[index].description),
                        ),
                ),
              ),
              actions: <Widget>[
                IconSlideAction(
                  caption: 'Done',
                  color: Colors.green,
                  icon: Icons.done,
                  onTap: () {},
                ),
              ],
              secondaryActions: <Widget>[
                IconSlideAction(
                  caption: 'Edit',
                  color: Colors.blue,
                  icon: Icons.edit,
                  onTap: () {},
                ),
                IconSlideAction(
                  caption: 'Delete',
                  color: Colors.red,
                  icon: Icons.delete,
                  onTap: () {},
                ),
              ],
            );
          },
        );
      },
    );
  }
}
