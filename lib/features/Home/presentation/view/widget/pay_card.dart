import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class PayCard extends StatelessWidget {
  const PayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: korange,
      child: const SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              'Add to Cart',
              style: Styles.textStyle18,
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              '191',
              style: Styles.textStyle18,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
