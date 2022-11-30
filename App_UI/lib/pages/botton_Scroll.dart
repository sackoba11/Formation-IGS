import 'package:flutter/material.dart';

class BottomScroll extends StatelessWidget {
  const BottomScroll(
      {super.key,
      required this.title,
      required this.width,
      required this.color,
      required this.textColor});

  final String title;
  final double width;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: width,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),

        ///const Color(0xFFF6F7F9)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}
