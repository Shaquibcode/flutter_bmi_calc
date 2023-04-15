import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String btnName;
  VoidCallback onTheTap;
  Color color;
  Color txtColor;

  MyButton({required this.color, required this.btnName, required this.onTheTap, this.txtColor=Colors.blue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTheTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Center(
          child: Text(btnName, style: TextStyle(fontSize: 20, color: txtColor),),
        ),
      ),
    );
  }
}
