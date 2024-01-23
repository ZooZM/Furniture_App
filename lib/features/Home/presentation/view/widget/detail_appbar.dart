import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {
        Navigator.of(context).pop();
      },
      leading: const Icon(
        Icons.arrow_back_ios,
      ),
      title: const Text(
        'Boogly chair',
        style: Styles.textStyle20,
      ),
    );
  }
}
