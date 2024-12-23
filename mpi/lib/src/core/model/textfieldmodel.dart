import 'package:flutter/material.dart';

class TextFieldModel {
  final String label;
  final IconData prefixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;

  TextFieldModel({
    required this.label,
    required this.prefixIcon,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.validator,
  });
}
