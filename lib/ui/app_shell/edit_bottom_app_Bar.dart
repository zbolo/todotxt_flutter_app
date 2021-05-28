import 'package:flutter/material.dart';

class EditBottomAppBar extends StatelessWidget {
  const EditBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Project',
              icon: Text('+'),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Context',
              icon: Text('@'),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'due',
              icon: Text('due:'),
              onPressed: () {},
            ),
          ],
        ),
      );
  }
}