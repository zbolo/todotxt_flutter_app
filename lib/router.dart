
import 'package:flutter/widgets.dart';
import 'package:todotxt_flutter_app/blocs/tasks_bloc_provider.dart';

import 'blocs/account_bloc_provider.dart';
import 'ui/accounts_page/accounts_page.dart';
import 'ui/home_page/home_page.dart';

Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => TasksBlocProvider(
    child: HomePage(),
  ),
  AccountsPage.routeName: (context) => AccountBlocProvider(
    child: AccountsPage(),
  ),
};