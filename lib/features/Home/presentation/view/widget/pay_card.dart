import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class PayCard extends StatelessWidget {
  const PayCard({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: korange,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              'Add to Cart',
              style: Styles.textStyle18,
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              price,
              style: Styles.textStyle18,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
