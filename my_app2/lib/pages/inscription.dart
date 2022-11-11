import 'package:flutter/material.dart';
import 'package:my_app2/pages/corps.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(206, 5, 60, 116),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        child: entete(
            "Get On Board !", "Create your profile to eart your journey"),
      ),
      Container(
        child: champ("Name", "Full name", Icons.person),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        child: champ("E-mail", "Your emaim", Icons.email),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        child: champ("Name", "Full name", Icons.numbers),
      ),
      const Card(
        margin: EdgeInsets.only(bottom: 10),
      ),
      Container(
        child: champ("Password", "Your password", Icons.fingerprint),
      ),
      Container(
        margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
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
              child: const Text('Create Account')),
        ),
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
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.alphaBlend(Colors.transparent, Colors.white)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          // ignore: prefer_const_constructors
                          side: BorderSide(
                              width: 2,
                              color: Colors.black,
                              style: BorderStyle.solid)))),
              // child: const Text('Sign in with Google')),
            ),
          )),
      const SizedBox(height: 10),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Already have an account?",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        Container(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
              // Navigator.push(context,
              //     MaterialPageRoute<void>(builder: (BuildContext context) {
              //   return const MyApp();
              // }));
            },
            child: const Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ])
    ]));
  }
}
