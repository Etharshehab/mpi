import 'package:flutter/material.dart';
import 'package:mpi/src/core/model/textfieldmodel.dart';

List<TextFieldModel> registerfields = [
  TextFieldModel(
      label: "Name",
      prefixIcon: Icons.person,
      hintText: "Please enter your name",
      controller: TextEditingController(),
      validator: (value) {
        if (value == null || value.length < 3) {
          return "Name must be at least 3 characters";
        }
        return null;
      }),
  TextFieldModel(
    label: "National ID",
    prefixIcon: Icons.perm_identity,
    hintText: "Please enter your national ID",
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || value.length != 14) {
        return "National ID must be 14 digits";
      }
      return null;
    },
  ),
  TextFieldModel(
    label: "Phone Number",
    prefixIcon: Icons.phone,
    hintText: "Please enter your phone number",
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || value.length != 11) {
        return "Phone number must be 11 digits";
      }
      return null;
    },
  ),
  TextFieldModel(
    label: "Email",
    prefixIcon: Icons.email,
    hintText: "Please enter your email",
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || !value.contains('@')) {
        return "Enter a valid email";
      }
      return null;
    },
  ),
  TextFieldModel(
    label: "Password",
    prefixIcon: Icons.password,
    hintText: "Please enter your password",
    obscureText: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || value.length < 8) {
        return "Password must be at least 8 characters";
      }
      return null;
    },
  ),
  TextFieldModel(
    label: "Token",
    prefixIcon: Icons.token,
    hintText: "Please enter the token",
    controller: TextEditingController(),
    validator: (value) {
      if (value == null || value.length < 5) {
        return "Token must be at least 5 characters";
      }
      return null;
    },
  ),
];
