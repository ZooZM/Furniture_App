import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/welcome/data/path.dart';

class WViewModel extends StatelessWidget {
  const WViewModel({
    super.key,
    required this.index,
    required this.currentIndex,
  });
  final int index;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.16,
          child: Image.asset(onBoardList[index].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Text(
            onBoardList[index].title,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(
                  milliseconds: 600,
                ),
                width: currentIndex == index ? 15 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 26),
          child: Text(
            onBoardList[index].subtitle,
            style: Styles.textStyle16.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
