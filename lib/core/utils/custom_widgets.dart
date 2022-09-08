export 'widgets/custom_input.dart';
export 'widgets/custom_text.dart';
export 'widgets/custom_spacing.dart';
export 'widgets/custom_section_header.dart';
export 'widgets/custom_button.dart';
export 'util/constants/constant.dart';
export 'util/binding/binding.dart';
export '../config/themes/themes.dart';
export 'widgets/custom_app_bar.dart';
export 'widgets/custom_radio.dart';
export 'package:get/get.dart';
export 'extensions/custom_string_extensions.dart';

import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import '../config/locale/locale_service.dart';
import '../config/routes/app_pages.dart';
import '../config/themes/theme_services.dart';
import '../config/themes/themes.dart';

class CustomWidgets extends LocaleServices
    with ThemeService, AppPages {
  static final GetStorage storage = GetStorage();

  static ThemeData get darkTheme => Themes.dark;
  static ThemeData get lightTheme => Themes.light;

  static bool get isLoggedIn => storage.hasData("IS_LOGGED_KEY") &&
      storage.read("IS_LOGGED_KEY");

  static bool get isOnBoarding =>
      storage.hasData("ON_BOARDING_FINISHED_KEY") &&
      storage.read("ON_BOARDING_FINISHED_KEY");
}
