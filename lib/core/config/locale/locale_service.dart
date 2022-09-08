import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'translation.dart';

export 'translation.dart';

class LocaleServices {
  final _storage = GetStorage();
  final _key = 'locale';

  bool get isRTL => _loadLocale() == "ar";

  /// Get locale info from local storage and return ThemeMode
  String get locale => _loadLocale();

  /// Load localization from local storage
  String _loadLocale() =>
      _storage.read(_key) ?? Get.deviceLocale.toString().split("_")[0];

  /// Save locale to local storage
  _saveLocale(String locale) => _storage.write(_key, locale);


  Translations get translations => Translation();

  /// Switch Locale and save to local storage
  void switchLocale(String locale) {
    Get.updateLocale(Locale(locale));
    _saveLocale(locale);
  }
}
