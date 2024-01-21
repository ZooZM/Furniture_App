import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Detail/presentation/view/widget/item_rate.dart';

class DetailText extends StatelessWidget {
  const DetailText({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Boogly Chair',
              style: Styles.textStyle26,
            ),
            Spacer(),
            ItemRate(),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'this chair is very comfortable and modern you can put it and give your living rom the best look ever when you sit on it you will know.',
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
