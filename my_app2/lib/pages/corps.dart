// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget entete(String title, String subtitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 250,
        margin: const EdgeInsets.only(right: 150, top: 60),
        child: Image.asset(
          "images/3.jpg",
          width: 150,
          height: 150,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 140),
        //width: 200,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 4, 57, 101),
              fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 25),
        width: 500,
        child: Text(
          subtitle,
          style: const TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 4, 57, 101),
              fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}

Widget champ(
  String title,
  String subtitlte,
  IconData icone,
) {
  return Column(
    children: [
      Container(
        height: 60,
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: title,
              hintText: subtitlte,
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 0), // add padding to adjust icon
                child: Icon(
                  icone,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          keyboardType: TextInputType.text,
        ),
      ),
    ],
  );
}

Widget buton(String title) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
        child: SizedBox(
          height: 45,
          width: 400,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                //side: BorderSide(color: Colors.red)
              ))),
              child: Text(title)),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          // color: Colors.red,
          child: const Text(
            "OR",
            style: TextStyle(color: Colors.black),
          )),
      Container(
          margin: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: SizedBox(
            height: 45,
            width: 400,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(
                  "images/goole.png",
                ),
                width: 20,
                height: 20,
              ),
              label: const Text(
                'Sign in with Google',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.alphaBlend(Colors.transparent, Colors.white)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                              width: 2,
                              color: Colors.black,
                              style: BorderStyle.solid)))),
            ),
          )),
    ],
  );
}
