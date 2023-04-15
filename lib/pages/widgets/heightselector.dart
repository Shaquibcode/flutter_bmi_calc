import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/range_step.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';
import 'package:bmicalc/controller/bmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/colors.dart';

class HeightSelector extends StatelessWidget {
  HeightSelector({Key? key}) : super(key: key);
  BmiController bmiController = Get.put(BmiController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 300,
          maxHeight: 500,
        ),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: lightWhiteColor,
        ),
        child: Column(
          children: [
            const Text(
              'Height',
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Expanded(
              child: FlutterSlider(
                rtl: true,
                axis: Axis.vertical,
                values: [bmiController.height.value],
                handler: FlutterSliderHandler(
                  child: const Icon(Icons.person),
                ),
                step: FlutterSliderStep(
                  step: 100,
                  isPercentRange: true,
                  rangeList: [
                    FlutterSliderRangeStep(from: 0, to: 500, step: 5),
                  ],
                ),
                tooltip: FlutterSliderTooltip(
                  alwaysShowTooltip: true,
                ),
                decoration: const BoxDecoration(color: Colors.white),
                max: 500,
                min: 0,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  bmiController.height.value = lowerValue;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
