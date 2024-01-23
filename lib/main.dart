import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/presentation/view/detail_view.dart';
import 'package:furniture_app/features/Home/presentation/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        const HomeView().id: (context) => const HomeView(),
        const DetailPage().id: (context) => const DetailPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
