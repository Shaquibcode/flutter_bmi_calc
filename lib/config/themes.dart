import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: lightBgColor,
    iconTheme: const IconThemeData(
      color: Colors.yellow,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        color: lightTextColor,
        fontSize: 60,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: lightTextColor,
        fontSize: 15,
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: lightTextColor,
        fontSize: 20,
      ),
      labelMedium: TextStyle(
        color: Color(0xff8C8C8C),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBgColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: darkTextColor,
        fontSize: 35,
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: darkTextColor,
        fontSize: 20,
      ),
    ),
  );
}
