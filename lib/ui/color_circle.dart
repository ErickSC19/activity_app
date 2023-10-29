import 'package:flutter/cupertino.dart';

class ColorCircle extends StatelessWidget {
  const ColorCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 3.0,
          color: const Color.fromRGBO(253, 148, 20, 1),
        ),
      ),
    );
  }
}
