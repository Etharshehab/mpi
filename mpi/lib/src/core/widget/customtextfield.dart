import 'package:flutter/material.dart';
import 'package:mpi/src/core/model/textfieldmodel.dart';

class CustomTextField extends StatelessWidget {
  final TextFieldModel model;
  const CustomTextField({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: model.validator,
        controller: model.controller,
        obscureText: model.obscureText,
        decoration: InputDecoration(
            label: Text(model.label),
            hintText: model.hintText,
            prefixIcon: Icon(model.prefixIcon),
            suffixIcon: InkWell(
              onTap: () {
                model.controller.clear();
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
