import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData preifixicon;
  final String hinttext;
  final TextEditingController controller;
  final bool? obscureText;
  final String? Function(String?)? validator;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.preifixicon,
      required this.hinttext,
      required this.controller,
      this.validator,
      this.obscureText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
            label: Text(widget.label),
            hintText: widget.hinttext,
            prefixIcon: Icon(widget.preifixicon),
            suffixIcon: InkWell(
              onTap: () {
                widget.controller.clear();
              },
              child: const Icon(Icons.clear),
            ),
            border: border(color: Colors.teal, radius: 30),
            enabledBorder: border(color: Colors.black, radius: 50),
            focusedBorder: border(color: Colors.grey, radius: 10)),
      ),
    );
  }
}

InputBorder border({required Color color, required double radius}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius),
    borderSide: BorderSide(color: color),
  );
}
