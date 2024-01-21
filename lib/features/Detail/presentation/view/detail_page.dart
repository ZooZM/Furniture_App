import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back,
              ),
            ],
          )
        ],
      ),
    );
  }
}
