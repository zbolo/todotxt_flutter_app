import 'package:flutter/material.dart';
import 'account_bloc.dart';

export 'account_bloc.dart';

class AccountBlocProvider extends InheritedWidget {
  final bloc = AccountBloc();

  AccountBlocProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static AccountBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AccountBlocProvider>()
        !.bloc;
  }
}
