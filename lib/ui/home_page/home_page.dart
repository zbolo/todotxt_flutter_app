import 'package:flutter/material.dart';
import 'package:todotxt_flutter_app/ui/app_shell/app_shell.dart';
import 'package:todotxt_flutter_app/ui/app_shell/edit_bottom_app_Bar.dart';
import 'package:todotxt_flutter_app/ui/home_page/task_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  static String get routeName => '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppShell(
      appBar: AppBar(
        title: Text('Todo.txt'),
      ),
      fab: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Create',
      ),
      fabLocation: FloatingActionButtonLocation.endDocked,
      bottomAppBar: EditBottomAppBar(),
      body: TaskList(),
    );
  }
}
