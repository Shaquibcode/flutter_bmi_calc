import 'package:bmicalc/pages/widgets/addButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/bmiController.dart';

class WeightSelector extends StatelessWidget {
  String txt;
  String numTxt;
  WeightSelector({required this.txt, required this.numTxt,});


  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Container(
      padding: const EdgeInsets.all(8),
      height: 190,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: const TextStyle(fontSize: 20, color: Colors.black87),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            numTxt,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AddButton(
                  icon: CupertinoIcons.minus,
                  color: Colors.blue,
                  ontapp: () {
                    bmiController.onWtTapMinus();
                  }),
              AddButton(icon: Icons.add, color: Colors.blue, ontapp: () {
                bmiController.onWtTap();
              }),
            ],
          ),
        ],
      ),
    );
  }
}
