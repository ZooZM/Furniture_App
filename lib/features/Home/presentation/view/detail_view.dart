import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/detailv_view_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetailViewBody(),
      ),
    );
  }
}
