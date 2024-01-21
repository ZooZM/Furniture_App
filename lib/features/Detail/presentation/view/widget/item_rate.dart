import 'package:flutter/material.dart';

class ItemRate extends StatelessWidget {
  const ItemRate({super.key});

  @override
  Widget build(BuildContext context) {
    final List<bool> filledStars = [true, true, true, false, false];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Icon(
          filledStars[index] ? Icons.star_rate : Icons.star_rate_outlined,
          color: Colors.yellow,
          size: 30,
        ),
      ),
    );
  }
}
