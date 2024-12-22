import 'package:flutter/material.dart';

class CustomElvatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomElvatedButton({
    super.key,
    required this.onPressed,
    this.text = "Submit",
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        child: Text(text),
      ),
    );
  }
}
