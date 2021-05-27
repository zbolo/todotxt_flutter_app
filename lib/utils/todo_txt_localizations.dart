import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class TodoTxtLocalizations {
  final Locale locale;

  TodoTxtLocalizations(this.locale);

  static TodoTxtLocalizations? of(BuildContext context) {
    return Localizations.of<TodoTxtLocalizations>(
        context, TodoTxtLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'error': 'Something went wrong',
      'netError':
          'Service temporarly not available. Check your connection and try again.',
      'alertDialogCancel': 'CANCEL',
    },
  };

  String get error => _localizedValues[locale.languageCode]!['error'] ?? '';
  String get netError => _localizedValues[locale.languageCode]!['netError'] ?? '';
  String get alertDialogCancel => _localizedValues[locale.languageCode]!['alertDialogCancel'] ?? '';
}

class TodoTxtLocalizationsDelegate
    extends LocalizationsDelegate<TodoTxtLocalizations> {
  const TodoTxtLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'it'].contains(locale.languageCode);

  @override
  Future<TodoTxtLocalizations> load(Locale locale) {
    return SynchronousFuture<TodoTxtLocalizations>(
        TodoTxtLocalizations(locale));
  }

  @override
  bool shouldReload(TodoTxtLocalizationsDelegate old) => false;
}
