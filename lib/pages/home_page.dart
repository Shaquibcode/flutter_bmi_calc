import 'package:bmicalc/config/themes.dart';
import 'package:bmicalc/controller/bmiController.dart';
import 'package:bmicalc/pages/result_page.dart';
import 'package:bmicalc/pages/widgets/ageselector.dart';
import 'package:bmicalc/pages/widgets/heightselector.dart';
import 'package:bmicalc/pages/widgets/mybutton.dart';
import 'package:bmicalc/pages/widgets/topbox.dart';
import 'package:bmicalc/pages/widgets/weightselector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeController themeController = Get.find();
  BmiController bmiController = Get.put(BmiController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor:
            themeController.isDarkMode.value ? Colors.black : lightBgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: TopBox(),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children:  [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400, color: themeController.isDarkMode.value ? Colors.white : Colors.black),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Icon(
                        Icons.emoji_emotions_sharp,
                        size: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                    ],
                  ),
                  Row(
                    children:  [
                      Text(
                        'Bmi Calculator',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: themeController.isDarkMode.value ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          color: Colors.blue,
                          btnName: 'Male',
                          txtColor: Colors.white,
                          onTheTap: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: MyButton(
                          color: Colors.white,
                          btnName: 'Female',
                          onTheTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              HeightSelector(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(
                                () => WeightSelector(
                                  txt: 'Weight',
                                  numTxt: bmiController.weight.toString(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Obx(
                                () => AgeSelector(
                                  txt: 'Age',
                                  numTxt: bmiController.age.toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MyButton(
                      color: Colors.blue,
                      btnName: 'Let\'s Go',
                      txtColor: Colors.white,
                      onTheTap: () {
                        bmiController.calculateBmi();
                        Get.to(() => ResultPage());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
