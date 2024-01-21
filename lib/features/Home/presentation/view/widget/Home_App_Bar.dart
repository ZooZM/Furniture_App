import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home',
            style: Styles.textStyle26,
          ),
        ],
      ),
    );
  }
}
