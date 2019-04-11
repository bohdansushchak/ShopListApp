import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'dart:async';

class AppLocalications {
  static Future<AppLocalications> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localName = Intl.canonicalizedLocale(name);

    return initializeMessages(localName).then((bool _) {
      Intl.defaultLocale = localName;
      return AppLocalications();
    });
  }

  static AppLocalications of(BuildContext context) {
    return Localizations.of<AppLocalications>(context, AppLocalications);
  }

  String get appName {
    return Intl.message('Shop application',
        name: 'appName', desc: 'The title of the application');
  }

  String get appBarStoreData {
    return Intl.message('Store data', name: 'appBarStoreData');
  }

  String get appBarOrderList {
    return Intl.message('Shopping list', name: 'appBarOrderList');
  }

  String get appBarOrderData {
    return Intl.message('Order data', name: 'appBarOrderData');
  }

  String get txtPrice {
    return Intl.message('Amount', name: 'txtPrice');
  }

  String get txtProduct {
    return Intl.message('Product', name: 'txtProduct');
  }

  String get btnDone {
    return Intl.message('DONE', name: 'btnDone');
  }

  String get btnLogin {
    return Intl.message('LOG IN', name: 'btnLogin');
  }

  String get btnNextStep {
    return Intl.message('NEXT STEP', name: 'btnNextStep');
  }

  String get btnShare {
    return Intl.message('SEND INVITE', name: 'btnShare');
  }

  String get hindDate {
    return Intl.message('Date of purchase', name: 'hindDate');
  }

  String get hindEmail {
    return Intl.message('E-mail', name: 'hindEmail');
  }

  String get hindLocation {
    return Intl.message('Location', name: 'hindLocation');
  }

  String get hindPassword {
    return Intl.message('Password', name: 'hindPassword');
  }

  String get hindProduct {
    return Intl.message('Article', name: 'hindProduct');
  }

  String get hindShopName {
    return Intl.message('Shop name', name: 'hindShopName');
  }

  String get errCheckInternetConn {
    return Intl.message('Check your internet connection',
        name: 'errCheckInternetConn');
  }

  String get errItemsIsEmpty {
    return Intl.message('Add a product', name: 'errItemsIsEmpty');
  }

  String get errNoExistAppToSend {
    return Intl.message('Not exist app to send an invitation',
        name: 'errNoExistAppToSend');
  }

  String get errPasswordIsEmpty {
    return Intl.message('Password is empty', name: 'errPasswordIsEmpty');
  }

  String get errEmailIsEmpty {
    return Intl.message('Email is empty', name: 'errEmailIsEmpty');
  }

  String get errPriceIsEmpty {
    return Intl.message('Enter price', name: 'errPriceIsEmpty');
  }

  String get errProductNameIsEmpty {
    return Intl.message('Enter a product name', name: 'errProductNameIsEmpty');
  }

  String get errDateIsBlank {
    return Intl.message('Choose a date', name: 'errDateIsBlank');
  }

  String get errLocationIsBlank {
    return Intl.message('Enter a location', name: 'errLocationIsBlank');
  }

  String get errShopNameIsBlank {
    return Intl.message('Enter a store name', name: 'errShopNameIsBlank');
  }
}

class AppLocalizationDelegates extends LocalizationsDelegate<AppLocalications> {
  const AppLocalizationDelegates();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pl'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalications> load(Locale locale) {
    return AppLocalications.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalications> old) {
    return false;
  }
}
