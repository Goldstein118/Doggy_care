import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme
        ? ThemeData(
            brightness: Brightness.dark,
            colorScheme: const ColorScheme.dark()
                .copyWith(primary: const Color.fromARGB(255, 14, 1, 1)),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              elevation: 10,
              selectedItemColor: Color.fromARGB(255, 255, 118, 59),
              unselectedItemColor: Color.fromARGB(255, 255, 254, 254),
              showUnselectedLabels: true,
            ),
          )
        : ThemeData(
            appBarTheme: const AppBarTheme(
                color: Color(0xff312227),
                titleTextStyle: TextStyle(
                    color: Color(0xffCF5A27),
                    fontSize: 20,
                    fontFamily: 'nunito')),
            brightness: Brightness.light,
            scaffoldBackgroundColor: const Color(0xff312227),
            textTheme:
                const TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
                    .apply(
                        bodyColor: const Color(0xffCF5A27),
                        displayColor: const Color(0xffCF5A27)),
            hintColor: const Color(0xffCF5A2f),
            listTileTheme:
                const ListTileThemeData(tileColor: Color(0xffeed3c1)),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              elevation: 10,
              backgroundColor: Color(0xffeed3c1),
              selectedItemColor: Color(0xffCF5A27),
              unselectedItemColor: Color.fromARGB(255, 61, 61, 61),
              showUnselectedLabels: true,
            ),
          );
  }
}
