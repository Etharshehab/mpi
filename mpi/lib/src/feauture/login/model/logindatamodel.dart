import 'package:flutter/material.dart';
import 'package:mpi/src/core/model/textfieldmodel.dart';

List<TextFieldModel> loginFields = [
  TextFieldModel(
    label: 'Email',
    prefixIcon: Icons.email,
    hintText: 'Please enter your email',
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@')) {
        return 'Enter a valid email';
      }
      return null;
    },
  ),
  TextFieldModel(
    label: 'Password',
    prefixIcon: Icons.lock,
    hintText: 'Please enter your password',
    controller: TextEditingController(),
    obscureText: true,
    validator: (value) {
      if (value == null || value.length < 8) {
        return 'Password must be at least 8 characters';
      }
      return null;
    },
  ),
];
