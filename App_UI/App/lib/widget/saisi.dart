import 'package:flutter/material.dart';

Widget saisi() {
  return Column(
    children: [
      Container(
        height: 50,
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Your email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          keyboardType: TextInputType.text,
        ),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 30),
      ),
      Container(
        height: 45,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: "Password",
            hintText: "Your password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          keyboardType: TextInputType.text,
          obscureText: true,
        ),
      ),
    ],
  );
}
