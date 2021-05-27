import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todotxt_flutter_app/ui/app_theme.dart';

import '../utils/todo_txt_localizations.dart';
import '../utils/widget_utils.dart';
import '../router.dart';

class TodoTxtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const TodoTxtLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
      ],
      onGenerateRoute: (RouteSettings settings) =>
          FadeRoute.onGenerateRoute(settings, context, routes),
      theme: AppTheme.theme,
    );
  }
}
