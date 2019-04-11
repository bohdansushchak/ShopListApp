import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'dart:async';

import 'package:shop_list_app/l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localName = Intl.canonicalizedLocale(name);

    return initializeMessages(localName).then((bool _) {
      Intl.defaultLocale = localName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
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

  String get hintDate {
    return Intl.message('Date of purchase', name: 'hintDate');
  }

  String get hintEmail {
    return Intl.message('E-mail', name: 'hintEmail');
  }

  String get hintLocation {
    return Intl.message('Location', name: 'hintLocation');
  }

  String get hintPassword {
    return Intl.message('Password', name: 'hintPassword');
  }

  String get hintProduct {
    return Intl.message('Article', name: 'hintProduct');
  }

  String get hintShopName {
    return Intl.message('Shop name', name: 'hintShopName');
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

  String get hintPrice {
    return Intl.message('Price', name: 'hintPrice');
  }

  String get errTitleDialog {
    return Intl.message('Error message', name: 'errTitleDialog');
  }
}

class AppLocalizationDelegates extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegates();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pl'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
