import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Image.asset(
            'assets/images/1.png',
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Boogly Chair',
                style: Styles.textStyle16,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '191',
                style: TextStyle(
                  color: korange,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.star_rate,
                color: Colors.yellow,
              ),
              const Text('4.0'),
            ],
          )
        ],
      ),
    );
  }
}
