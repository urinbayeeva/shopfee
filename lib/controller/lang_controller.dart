import 'dart:developer';
import 'package:flutter/cupertino.dart';

enum Language { en, uz }

final localeController = LocaleController();

class LocaleController with ChangeNotifier {
  String _appLocale = "en";

  Locale get appLocale => _appLocale == Language.uz.name
      ? const Locale("uz", "UZ")
      : const Locale("en", "US");

  void changeLang(Language language) {
    _appLocale = language.name;
    notifyListeners();
    log(_appLocale);
  }
}
