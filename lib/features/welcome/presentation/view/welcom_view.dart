import 'package:flutter/material.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_view_body.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WViewBody(),
      ),
    );
  }
}
