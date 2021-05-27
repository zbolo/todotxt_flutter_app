import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:todotxt_flutter_app/utils/todo_txt_localizations.dart';

class WidgetUtils {
  static Widget showStreamErrorMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          message,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  static addClick(Widget container, void Function()? handler) {
    return GestureDetector(
      child: container,
      onTap: handler,
    );
  }

  static createDialog(BuildContext context, String message,
      {void Function()? onOK}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Todo.txt'),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child:
                    Text(TodoTxtLocalizations.of(context)!.alertDialogCancel),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('OK'),
                onPressed: (onOK != null)
                    ? onOK
                    : () {
                        Navigator.pop(context);
                      },
              ),
            ],
          );
        });
  }

  static showMessage(BuildContext context, String message) {
    try {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    } catch (ex) {
      print(ex);
    }
  }

  static Widget buildPositionedLoader(bool isLoading) {
    return Positioned(
      child: (isLoading)
          ? Container(
              child: Center(
                child: PlatformLoader(),
              ),
              color: Colors.white.withOpacity(0.8),
            )
          : Container(),
    );
  }
}

class PlatformLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget loader;

    if (kIsWeb) {
      loader = CircularProgressIndicator();
    } else if (Platform.isIOS) {
      loader = CupertinoActivityIndicator();
    } else if (Platform.isAndroid) {
      loader = CircularProgressIndicator();
    } else {
      loader = CircularProgressIndicator();
    }

    return Center(
      child: loader,
    );
  }
}

/// A route with fade transition.
class FadeRoute extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;

  FadeRoute({required this.page, required this.settings})
      : super(
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

  static Route<dynamic> onGenerateRoute(
    RouteSettings settings,
    BuildContext context,
    Map<String, WidgetBuilder> routes,
  ) {
    return FadeRoute(
      page: routes[settings.name]!(context),
      settings: settings,
    );
  }
}
