import 'package:flutter/material.dart';

class CutomTextField extends StatefulWidget {
  const CutomTextField({super.key});

  @override
  State<CutomTextField> createState() => _CutomTextFieldState();
}

class _CutomTextFieldState extends State<CutomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            label: const Text("الطول"),
            hintText: "برجاء ادخال الطول",
            border: border(color: Colors.black12, radius: 20),
            enabledBorder: border(color: Colors.grey, radius: 30),
            focusedBorder: border(color: Colors.white, radius: 20)));
  }
}

InputBorder border({required Color color, required double radius}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius),
    borderSide: BorderSide(color: color),
  );
}
