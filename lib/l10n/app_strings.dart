import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStrings {
  const AppStrings(this._values);

  final Map<String, dynamic> _values;

  static AppStrings of(BuildContext context) =>
      Localizations.of<AppStrings>(context, AppStrings)!;

  String get files => _values['files'] as String;
  String get view => _values['view'] as String;
  String get ai => _values['ai'] as String;
  String get filesPlaceholder => _values['filesPlaceholder'] as String;
  String get viewPlaceholder => _values['viewPlaceholder'] as String;
  String get aiPlaceholder => _values['aiPlaceholder'] as String;
}

class AppStringsDelegate extends LocalizationsDelegate<AppStrings> {
  const AppStringsDelegate();

  static const supportedLocales = [Locale('en'), Locale('nb')];

  @override
  bool isSupported(Locale locale) =>
      supportedLocales
          .any((supported) => supported.languageCode == locale.languageCode);

  @override
  Future<AppStrings> load(Locale locale) async {
    final language = locale.languageCode == 'nb' ? 'nb' : 'en';
    final contents = await rootBundle.loadString('lib/l10n/app_$language.arb');
    return AppStrings(jsonDecode(contents) as Map<String, dynamic>);
  }

  @override
  bool shouldReload(AppStringsDelegate old) => false;
}
