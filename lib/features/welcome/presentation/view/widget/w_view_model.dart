import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class WViewModel extends StatelessWidget {
  const WViewModel({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 26,
          ),
          SizedBox(
            height: 400,
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 28,
            ),
            child: Text(
              title,
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26),
            child: Text(
              subtitle,
              style: Styles.textStyle16.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
