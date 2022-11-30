import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String number;
  final double width;
  final double height;
  final onpress;
  final color;

  const Button(
      {super.key,
      required this.number,
      required this.width,
      required this.height,
      this.color,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
        onTap: onpress,
        child: SizedBox(
            width: width,
            height: height,
            child: Center(
                child: Text(
              number,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ))),
      ),
    );
  }
}
