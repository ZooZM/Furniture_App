import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/welcome/data/constant/constant.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1.16,
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Text(
              title,
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ...List.generate(
          //       onboardingPagedList.length,
          //       (index) => AnimatedContainer(
          //         margin: const EdgeInsets.only(right: 5),
          //         duration: const Duration(
          //           milliseconds: 600,
          //         ),
          //         width: 6,
          //         height: 6,
          //         decoration: BoxDecoration(
          //           color: Colors.black,
          //           borderRadius: BorderRadius.circular(5),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
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
