import 'package:flutter/material.dart';

Widget saisis() {
  return Column(
    children: [
      Container(
        height: 45,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "Last name",
              hintText: "Your last name",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          keyboardType: TextInputType.text,
          autocorrect: true,
          //autofocus: true,
        ),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        height: 45,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "First Name",
              hintText: "Your first name",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          autocorrect: true,
          //autofocus: true,
          keyboardType: TextInputType.text,
        ),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        height: 45,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "Phone Number",
              hintText: "Your Phone number",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          keyboardType: TextInputType.phone,
          autocorrect: true,
          //autofocus: true,
        ),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        height: 45,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Your email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          keyboardType: TextInputType.text,
          autocorrect: true,
          //autofocus: true,
        ),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
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
          autocorrect: true,
          //autofocus: true,
        ),
      ),
    ],
  );
}
