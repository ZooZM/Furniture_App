import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/item_rate.dart';

class DetailText extends StatelessWidget {
  const DetailText({super.key, required this.name, required this.subtitle});
  final String name;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              name,
              style: Styles.textStyle26,
            ),
            const Spacer(),
            const ItemRate(),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          subtitle,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
