import 'package:flutter/material.dart';
import 'package:todotxt_flutter_app/utils/utils.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: ScreenSize(context).screenHeight * 0.18,
            child: DrawerHeader(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Todo.txt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _menuItem(
            Icon(Icons.account_circle_outlined),
            'Accounts',
          ),
        ],
      ),
    );
  }

  Widget _menuItem(Widget icon, String title, [void Function()? onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
        ),
        onTap: onTap,
      ),
    );
  }
}
