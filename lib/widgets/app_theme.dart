import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/service/fuctions/colors.dart';

ThemeData ligthTheme() => ThemeData(
      // primaryColor: Colors.deepOrange,
      // primarySwatch: Colors.deepOrange,
      colorScheme: ColorScheme.fromSeed(seedColor: defultAppColor),

      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'open_sans',
      iconTheme: const IconThemeData(color: Colors.black),
      appBarTheme: const AppBarTheme(
          // backWardsCOmpatibility: false,  [ deleted from AppBarTheme ]
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: defultAppColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defultAppColor,
        unselectedItemColor: Colors.grey,
        elevation: 20.0,
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      // useMaterial3: true,
    );

ThemeData darkTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'open_sans',
      colorScheme: ColorScheme.fromSeed(seedColor: defultAppColor),
      // primarySwatch: Colors.deepOrange,

      appBarTheme: const AppBarTheme(
          // backWardsCOmpatibility: false,  [ deleted from AppBarTheme ]
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: defultAppColor,
        foregroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defultAppColor,
        elevation: 20.0,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
