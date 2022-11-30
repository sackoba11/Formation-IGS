import 'package:flutter/material.dart';

Widget entete(String title, String image) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        margin: const EdgeInsets.only(left: 15),
        width: 150,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 4, 57, 101),
              fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 20),
        child: Image.asset(
          image,
          width: 150,
          height: 140,
        ),
      )
    ],
  );
}
