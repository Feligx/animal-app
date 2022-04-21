import 'package:flutter/material.dart';
class Themes{
  static final darkTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      labelStyle: TextStyle(color: Colors.white),
      suffixStyle: TextStyle(color: Colors.white),

    ),
    primarySwatch: Colors.indigo,
    backgroundColor: Colors.black,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    primaryColorDark: Colors.white,

    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      overline: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
      subtitle2: TextStyle(color: Colors.white),
    ),

    appBarTheme: const AppBarTheme(
      shape: Border(
        bottom: BorderSide(
          color: MaterialColor(0xFF545454, <int, Color>{
            50: Color(0xFF545454),
            100: Color(0xFF545454),
            200: Color(0xFF545454),
            300: Color(0xFF545454),
            400: Color(0xFF545454),
            500: Color(0xFF545454),
            600: Color(0xFF545454),
            700: Color(0xFF545454),
            800: Color(0xFF545454),
            900: Color(0xFF545454),
          }),
          width: 1.0,
        ),
      ),
      color: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),

    cardTheme: CardTheme(
      color: Colors.black,
      shape: Border(
        bottom: BorderSide(
          color: MaterialColor(0xFF545454, <int, Color>{
            50: Color(0xFF545454),
            100: Color(0xFF545454),
            200: Color(0xFF545454),
            300: Color(0xFF545454),
            400: Color(0xFF545454),
            500: Color(0xFF545454),
            600: Color(0xFF545454),
            700: Color(0xFF545454),
            800: Color(0xFF545454),
            900: Color(0xFF545454),
          }),
          width: 1.0,
        ),
      ),
    ),

    //for bottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    ),
    bottomAppBarColor: Colors.black,
    //primaryColor: Colors.white,

    //for icons
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );



  static final lightTheme = ThemeData(
    //for general colors
    primarySwatch: Colors.indigo,
    primaryColor: Colors.indigo,

    //for text colors
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.black),
      caption: TextStyle(color: Colors.black),
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black),
      headline3: TextStyle(color: Colors.black),
      headline4: TextStyle(color: Colors.black),
      headline5: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
      overline: TextStyle(color: Colors.black),
      subtitle1: TextStyle(color: Colors.black),
      subtitle2: TextStyle(color: Colors.black),
    ),

    //for textField
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo),
      ),
    ),

    //for appBar
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.indigo,
      ),

      titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),

      color: Colors.white,
    ),

    //for bottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.indigo,
      unselectedItemColor: Colors.indigo,
    ),

    //for icons
    iconTheme: IconThemeData(
      color: Colors.indigo,
    ),
  );
}