import 'package:flutter/material.dart';
import 'package:my_app2/pages/corps.dart';

class Connexions extends StatelessWidget {
  const Connexions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(206, 5, 60, 116),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Connexion(),
    );
  }
}

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: entete(
                'Welcome Back,', 'Make it work, make it right, make it test'),
          ),
          Container(
            child: champ(
              'email',
              'your email',
              Icons.person_sharp,
            ),
          ),
          const Card(
            margin: EdgeInsets.only(bottom: 10),
          ),
          Container(
            //child: champ('Password', 'your your password', Icons.lock),
            height: 60,
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Your password",
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.only(top: 0), // add padding to adjust icon
                    child: Icon(Icons.lock),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  suffixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    child: Icon(Icons
                        .remove_red_eye_outlined), // myIcon is a 48px-wide widget.
                  )),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
          ),
          const SizedBox(height: 15),
          Container(
              margin: const EdgeInsets.only(left: 60, right: 30),
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            child: buton("Login"),
          ),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Don't have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            Container(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
