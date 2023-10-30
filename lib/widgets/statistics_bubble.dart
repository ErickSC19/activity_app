import 'package:flutter/material.dart';

class StatisticsBubble extends StatelessWidget {
  const StatisticsBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xffffffff)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "479 354",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(253, 148, 20, 1)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Total \n Steps",
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 150, 150, 150),
            ),
          )
        ],
      ),
    );
  }
}
