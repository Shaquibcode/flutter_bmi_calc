import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  RxDouble height = 0.0.obs;
  RxInt age = 0.obs;
  RxInt weight = 0.obs;
  double bmi = 0.0;
  var msg = "";
  var bgColor = Colors.deepPurple.shade100;

  int onWtTap() {
    weight.value = weight.value + 1;
    return weight.value;
  }

  int onWtTapMinus() {
    if (weight.value == 0) {
      return weight.value;
    } else if (weight.value > 0) {
      weight.value = weight.value - 1;
      return weight.value;
    }
    return weight.value;
  }

  int onAgeTap() {
    age.value = age.value + 1;
    return age.value;
  }

  int onAgeTapMinus() {
    if (age.value == 0) {
      return age.value;
    } else if (age.value > 0) {
      age.value = age.value - 1;
      return age.value;
    }
    return age.value;
  }

  void calculateBmi() {
    double result = weight.value / pow(height.value / 100, 2);

    bmi = double.parse(result.toStringAsFixed(1));

    getResult();
  }

  void getResult() {
    if (bmi > 25) {
      bgColor = Colors.redAccent;
      msg = 'Overweight';
    } else if (bmi < 18) {
      msg = 'UnderWeight';
      bgColor = Colors.orangeAccent;
    } else {
      msg = 'Healthy';
      bgColor = Colors.green;
    }
  }
}
