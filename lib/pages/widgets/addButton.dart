import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  IconData icon;
  Color color;
  VoidCallback ontapp;

  AddButton({required this.icon, required this.color, required this.ontapp});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapp,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.white,),
      ),
    );
  }
}
