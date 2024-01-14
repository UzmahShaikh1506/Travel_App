import 'package:flutter/material.dart';

class map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/map.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "",
          ),
        ),
      ),
    );
  }
}
