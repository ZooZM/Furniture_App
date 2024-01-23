import 'package:flutter/material.dart';
import 'package:furniture_app/constant.dart';
import 'package:furniture_app/features/Home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
