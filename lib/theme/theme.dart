import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 31, 31, 31),
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    dividerColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(
          fontSize: 24, 
          fontWeight: FontWeight.w500, 
          color: Colors.white),
      bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white.withOpacity(0.6)
      ),
    )
);
