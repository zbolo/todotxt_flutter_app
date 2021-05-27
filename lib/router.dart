
import 'package:flutter/widgets.dart';

import 'blocs/account_bloc_provider.dart';
import 'ui/accounts_page/accounts_page.dart';
import 'ui/home_page/home_page.dart';

Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AccountsPage.routeName: (context) => AccountBlocProvider(
    child: AccountsPage(),
  ),
};