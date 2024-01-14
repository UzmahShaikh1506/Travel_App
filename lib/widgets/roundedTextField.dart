import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String label;

  RoundedTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}