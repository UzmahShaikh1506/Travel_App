// fund_condition_widget.dart
import 'package:flutter/material.dart';

class FundCondition extends StatelessWidget {
  final String type;
  final String amount;
  final String imagePath;
  final Color iconColor;

  const FundCondition({
    Key? key,
    required this.type,
    required this.amount,
    required this.imagePath,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(9),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2.4,
            color: Colors.blueGrey,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.image, // Placeholder icon
            color: iconColor,
            size: 25,
          ),
          const SizedBox(width: 12.4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.5,
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(left: 0.4),
                child: Text(
                  "\$$amount",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 16, 41),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12.4),
          Image.asset(
            imagePath,
            height: 25,
            width: 25,
          ),
        ],
      ),
    );
  }
}
