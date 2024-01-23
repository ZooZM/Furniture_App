import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key, required this.name});
  final String name;
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
      title: Text(
        name,
        style: Styles.textStyle20,
      ),
    );
  }
}
