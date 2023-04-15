import 'package:bmicalc/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBox extends StatefulWidget {
  const TopBox({Key? key}) : super(key: key);

  @override
  State<TopBox> createState() => _TopBoxState();
}

class _TopBoxState extends State<TopBox> {
  ThemeController themeController = Get.find();
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 130,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                themeController.isDarkMode.value = false;
              },
              icon: const Icon(
                Icons.sunny,
                color: Colors.blue,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                themeController.isDarkMode.value = true;
              },
              icon: Icon(
                Icons.nightlight_round_sharp,
                color: Colors.grey.withOpacity(0.6),
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
