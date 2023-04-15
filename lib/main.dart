import 'package:bmicalc/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return GetMaterialApp(
      darkTheme: themeController.darkTheme,
      theme: themeController.isDarkMode.value? themeController.darkTheme:themeController.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Calc',
      home: HomePage(),
    );
  }
}

