import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(
        Icons.arrow_back_ios,
      ),
      title: Text(
        'Boogly chair',
        style: Styles.textStyle20,
      ),
    );
  }
}
