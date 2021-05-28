import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppShell extends StatelessWidget {
  final Widget? body;
  final AppBar appBar;
  final IconData? fabIcon;
  final Function? onFabTapHandler;
  final Widget? fab;
  final FloatingActionButtonLocation? fabLocation;
  final Color? backgroundColor;
  final Widget? bottomAppBar;

  const AppShell(
      {this.body,
      required this.appBar,
      this.fabIcon,
      this.onFabTapHandler,
      this.fab,
      this.fabLocation,
      this.backgroundColor,
      this.bottomAppBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: appBar,
      drawer: AppDrawer(),
      body: body,
      floatingActionButton: fab,
      bottomNavigationBar: bottomAppBar,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
