import 'package:flutter/material.dart';

class Commen_TextFiled extends StatelessWidget {
  final hintText;
  final labelText;
  final suffixIcon;
  final prefixIcon;
  final controller;
  final counter;
  final maxLength;
  final keyboardType;
  final bool? obscureText;
  final void Function(String)? onchange;
  final String? Function(String?)? validator;

  const Commen_TextFiled({
    Key? key,
    this.hintText,
    this.labelText,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.counter,
    this.onchange,
    this.validator,
    this.keyboardType,
    this.maxLength,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      onChanged: onchange,
      obscureText: obscureText!,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        counter: counter,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
