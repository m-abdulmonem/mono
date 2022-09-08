import '/core/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      backgroundColor: colorBackground,
      scaffoldBackgroundColor: colorBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: colorBackground,
          shadowColor: Color.fromRGBO(0, 0, 0, 0.08),
          scrolledUnderElevation: 2,
          elevation: 2,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: colorPrimaryText,
          ),
          actionsIconTheme: IconThemeData(
            color: colorPrimaryText,
          ),
          titleTextStyle: TextStyle(
              color: colorPrimaryText,
              fontWeight: FontWeight.w500,
              fontSize: 19)));

  static final dark = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: colorDarkPrimaryText,
        ),
        actionsIconTheme: IconThemeData(
          color: colorDarkPrimaryText,
        ),
        titleTextStyle: TextStyle(
            color: colorDarkPrimaryText,
            fontWeight: FontWeight.w500,
            fontSize: 19)),

    backgroundColor: colorDarkPrimary,
    primaryColor: Colors.black45,
    textTheme: const TextTheme().copyWith(),
    primaryTextTheme: const TextTheme().copyWith(),
  );
}
