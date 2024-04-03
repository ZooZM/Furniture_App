import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/Styles.dart';
import 'package:furniture_app/features/Home/presentation/view/home_view.dart';
import 'package:furniture_app/features/welcome/data/path.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_icon.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_view_model.dart';

class WViewBody extends StatefulWidget {
  const WViewBody({super.key});

  @override
  State<WViewBody> createState() => _WViewBodyState();
}

class _WViewBodyState extends State<WViewBody> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(const HomeView().id),
                child: Text(
                  'Skip',
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
              )
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoardList.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return WViewModel(
                  currentIndex: currentIndex,
                  index: index,
                );
              },
            ),
          ),
          WIcon(
            onTap: () {
              if (currentIndex == onBoardList.length - 1) {
                Navigator.of(context).pushReplacementNamed(const HomeView().id);
              }
              _controller.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease,
              );
            },
            text:
                currentIndex == onBoardList.length - 1 ? "Get Started" : "Next",
          ),
        ],
      ),
    );
  }
}
