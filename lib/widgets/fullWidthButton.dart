import 'package:flutter/material.dart';

class fullWidthButton extends StatelessWidget {
  final String? label;
  final Widget? Class;

  const fullWidthButton({super.key, this.label, this.Class});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
          MaterialPageRoute(builder: (context) => Class!,));
        },
        child: Text(label!),
      ),
    );
  }
}
