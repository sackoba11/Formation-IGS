import 'package:flutter/material.dart';
import 'package:mon_app/connexion.dart';
import 'package:mon_app/widget/entete.dart';
import 'package:mon_app/widget/saisis.dart';

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
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;

    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(width: largeur, height: hauteur),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg7.jpg"), fit: BoxFit.cover),
      ),
      child: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 60),
          children: <Widget>[
            Center(
              child: entete('Welcome Back', "images/logo.png"),
            ),
            Container(
              child: saisis(),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0XFF550BFC), Color.fromRGBO(26, 255, 0, 1)],
                ),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 50),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        //primary: Colors.transparent,
                        //onSurface: Colors.transparent,
                        //shadowColor: Colors.transparent,
                        // shape:OutlineInputBorder(

                        // borderRadius: BorderRadius.all(Radius(5.0),)
                        ),
                    // style: ButtonStyle(
                    //     shape:
                    //         MaterialStateProperty.all<RoundedRectangleBorder>(
                    //             RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(5.0),
                    //   //side: BorderSide(color: Colors.red)
                    // ))),
                    child: const Text('Create Account')),
              ),
            ),
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
              const Text("Do you have an account ?",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    //Navigator.of(context).pop();
                    var route = MaterialPageRoute(
                        builder: (BuildContext context) => const MyHomePage());
                    Navigator.of(context).push(route);
                  },
                  child: const Text(
                    "Connect",
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 57, 101),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    ));
  }
}
