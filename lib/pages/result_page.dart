import 'package:bmicalc/controller/bmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  BmiController bmiController = Get.put(BmiController());
  @override
  Widget build(BuildContext context) {
    var bgColor = bmiController.bgColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bmi Result"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 1,
                color: bgColor,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .5,
                  child: Obx(() {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Your Age - ${bmiController.age.value.toString()}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(
                          'Your Bmi is - ${bmiController.bmi}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(
                          'You Are ${bmiController.msg}',
                          style: const TextStyle(fontSize: 30),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
