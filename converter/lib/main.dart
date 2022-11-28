import 'package:converter/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Converter',
        theme: ThemeData(
          fontFamily: 'DMSans',
          primaryColor: const Color(0xFFAC9B02),
        ),
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}
