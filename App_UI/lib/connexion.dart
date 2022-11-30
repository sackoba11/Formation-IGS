import 'package:flutter/material.dart';
import 'package:mon_app/pages/bottom_bar.dart';
import 'package:mon_app/pages/profil.dart';
import 'widget/saisi.dart';
import 'pages/inscription.dart';
import 'widget/entete.dart';

import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Reponse { oui, non }

class _MyHomePageState extends State<MyHomePage> {
  Profils second = const Profils();

  Future info() async {
    switch (await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: const EdgeInsets.only(right: 35, bottom: 15),
            title: const Text(
              "Enregistrement",
              textAlign: TextAlign.center,
            ),
            content: const Text(
              "Etes vous sur de vouloir effectuer cette action ?",
              textAlign: TextAlign.justify,
            ),
            actions: [
              ElevatedButton(
                  child: const Text("OUI"),
                  onPressed: () {
                    Navigator.of(context).pop(Reponse.oui); // Return value
                  }),
              ElevatedButton(
                  child: const Text("Non"),
                  onPressed: () {
                    Navigator.of(context).pop(Reponse.non); // Return value
                  }),
            ],
          );
        })) {
      case Reponse.oui:
        // _snackbar("enregistré");
        var route = MaterialPageRoute(
            builder: (BuildContext context) => const BottomBar());
        Navigator.of(context).push(route);

        break;
      case Reponse.non:
        _snackbar("annulé");
        break;
    }
  }

  void _snackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Votre formulaire est $message",
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        // action: SnackBarAction(
        //   label: 'Action',
        //   onPressed: (() {}),
        // ),
        duration: const Duration(milliseconds: 1500),
        // width: 300.0,
        // padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        //behavior: SnackBarBehavior.floating,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: const Color.fromARGB(206, 5, 60, 116)));
  }

  bool val1 = false;
  bool val2 = false;

  void chang1(s) {
    setState(() {
      val1 = s;
    });
  }

  void chang2(t) {
    setState(() {
      val2 = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;
    return Scaffold(
        //extendBodyBehindAppBar: true,
        //key: _sb,
        // appBar: AppBar(
        //   title: const Text("InterfaceConnexion"),
        //   centerTitle: true,
        // ),
        body: Stack(children: [
      Container(
        constraints: BoxConstraints.expand(width: largeur, height: hauteur),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg7.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 100),
            children: <Widget>[
              Center(
                child: entete('Welcome Back', "images/logo.png"),
              ),
              Container(
                child: saisi(),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 0),
                    child: Checkbox(
                      value: val1,
                      onChanged: chang1,
                      activeColor: const Color.fromARGB(255, 4, 57, 101),
                    ),
                  ),
                  const Text("Remember me"),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    alignment: Alignment.bottomRight,
                    // margin: const EdgeInsets.only(left: 80),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 57, 101),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF550BFC),
                      Color.fromARGB(255, 25, 252, 172)
                    ],
                  ),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        info();
                      },
                      style: ElevatedButton.styleFrom(
                        // primary: Colors.transparent,
                        //onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text('Login')),
                ),
              ),
              Row(children: const <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 20)),
                Expanded(child: Divider()),
                Text("Login with"),
                Expanded(child: Divider()),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "images/Twitter1.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "images/goole.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) => const Home());
                      Navigator.of(context).push(route);

                      // Navigator.push(context,
                      //     MaterialPageRoute<void>(builder: (BuildContext context) {
                      //   return const Home();
                      // }));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          //backgroundColor: Color.fromARGB(255, 240, 237, 237),
                          color: Color.fromARGB(255, 4, 57, 101),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    ]));
  }
}
