// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Register`
  String get registerTitle {
    return Intl.message(
      'Register',
      name: 'registerTitle',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `You haven an account?`
  String get haveAccount {
    return Intl.message(
      'You haven an account?',
      name: 'haveAccount',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `You haven't an account?`
  String get havenotAccount {
    return Intl.message(
      'You haven\'t an account?',
      name: 'havenotAccount',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Login Success!`
  String get loginSuccess {
    return Intl.message(
      'Login Success!',
      name: 'loginSuccess',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Register Success! ,check your email and confirm it`
  String get registerSuccess {
    return Intl.message(
      'Register Success! ,check your email and confirm it',
      name: 'registerSuccess',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Enter Student Data`
  String get enterData {
    return Intl.message(
      'Enter Student Data',
      name: 'enterData',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Insert`
  String get insert {
    return Intl.message(
      'Insert',
      name: 'insert',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Insert Success!`
  String get insertSuccess {
    return Intl.message(
      'Insert Success!',
      name: 'insertSuccess',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Students Information`
  String get studentInformation {
    return Intl.message(
      'Students Information',
      name: 'studentInformation',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Deleted successfully`
  String get deleteSuccess {
    return Intl.message(
      'Deleted successfully',
      name: 'deleteSuccess',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Update Success!`
  String get updateSuccess {
    return Intl.message(
      'Update Success!',
      name: 'updateSuccess',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Update Information`
  String get updateInformation {
    return Intl.message(
      'Update Information',
      name: 'updateInformation',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `No Data Available`
  String get noData {
    return Intl.message(
      'No Data Available',
      name: 'noData',
      desc: 'A simple greeting message',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: 'A simple greeting message',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
