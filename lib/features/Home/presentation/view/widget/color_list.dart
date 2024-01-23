import 'package:flutter/material.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  List<bool> isSelectList = [false, false, false];
  List<Color> listColor = const [
    Color(0xFF795548),
    Color(0xFF000000),
    Color(0xFF8D6E63),
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 8,
      runSpacing: 8,
      children: List.generate(
        3,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              isSelectList[index] = !isSelectList[index];
            });
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: listColor[index],
              shape: BoxShape.circle,
            ),
            child: isSelectList[index]
                ? const Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
