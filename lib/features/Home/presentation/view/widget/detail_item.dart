import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            color: korange,
            shape: BoxShape.circle,
          ),
        ),
        Image.asset(
          'assets/images/1.png',
          height: 250,
        ),
      ],
    );
  }
}
