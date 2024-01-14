import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://www.freepik.com/free-vector/realistic-weather-widget_1531136.htm#fromView=search&term=Weather&track=sph&regularType=vector&page=1&position=0&uuid=e44b0104-742d-45d0-aa7a-75134b4c9b1d"),
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
