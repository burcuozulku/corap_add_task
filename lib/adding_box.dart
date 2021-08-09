import 'package:flutter/material.dart';

class AddingBox extends StatelessWidget {
  final String text;
  final double widht;
  final double height;
  final Color color1;
  final Color color2;

  AddingBox({
    required this.text,
    required this.widht,
    required this.height,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widht,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [color1, color2],
          ),
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: 17))));
  }
}
