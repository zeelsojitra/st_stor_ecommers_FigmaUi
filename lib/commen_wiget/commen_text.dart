import 'package:flutter/material.dart';

class Commen_Text extends StatelessWidget {
  final text;
  final Color;
  final double? FontSize;
  final FontWeight;

  const Commen_Text(
      {Key? key, this.text, this.Color, this.FontSize, this.FontWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color,
        fontSize: FontSize,
        fontWeight: FontWeight,
      ),
    );
  }
}
