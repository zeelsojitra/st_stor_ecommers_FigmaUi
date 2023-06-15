import 'package:flutter/material.dart';

class Commen_buttons extends StatelessWidget {
  final Color;
  final Widget? child;
  final void Function()? onTap;

  const Commen_buttons({Key? key, this.Color, this.child, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.067,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
