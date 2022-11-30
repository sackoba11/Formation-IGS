import 'dart:math';

import 'package:calculator/models/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool valeur = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculatrice',
      theme: valeur ? ThemeData.light() : ThemeData.dark(),
      home: MyHomePage(theme),
    );
  }

  theme() {
    setState(() {
      valeur = !valeur;
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.theme);

  Function theme;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController champ1 = TextEditingController();
  String champ2 = "0";

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var largeur = width / 6;
    var hauteur = height / 10;
    var hauteur1 = height / 20;
    bool valeur = true;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                widget.theme();
              },
              child: Icon(
                Icons.dark_mode_sharp,
                size: 35,
                // color: valeur == true ? Colors.white : Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Colors.grey.shade600,
        toolbarOpacity: 0.5,
        elevation: 5,
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: ListView(children: [
        Card(
          elevation: 2,
          child: Column(
            children: [
              SizedBox(
                width: width,
                child: TextFormField(
                  readOnly: true,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  controller: champ1,
                  style: const TextStyle(
                    height: 1,
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                width: width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      champ2,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height - 250,
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var nombre = Number(10);
                          var expo = Log(nombre, exp);
                          setState(() {
                            champ1.text = " ";
                            loga(expo);
                          });
                        },
                        number: "Log",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Ln(exp);
                          setState(() {
                            champ1.text = " ";
                            ln(expo);
                          });
                        },
                        number: "ln",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var x = Number(0);
                          var expo = Modulo(exp, x);
                          setState(() {
                            champ1.text = " ";
                            mod(expo);
                          });
                        },
                        number: "mod",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute("(");
                        },
                        number: "(",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute(")");
                        },
                        number: ")",
                        height: hauteur1,
                        width: largeur),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        onpress: () {
                          var x = int.parse(champ1.text);
                          setState(() {
                            champ1.text = "Asin" + '(' + x.toString() + ')';
                            champ2 = asin(x).toString();
                          });
                        },
                        number: "Asin",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          var x = int.parse(champ1.text);
                          setState(() {
                            champ1.text = "Acos" + '(' + x.toString() + ')';
                            champ2 = acos(x).toString();
                          });
                        },
                        number: "Acos",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          var x = int.parse(champ1.text);
                          setState(() {
                            champ1.text = "Atan" + '(' + x.toString() + ')';
                            champ2 = atan(x).toString();
                          });
                        },
                        number: "Atan",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var val = "$exp" "x" "$exp";
                          setState(() {
                            champ1.text = val;
                          });
                        },
                        number: "X²",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Power(10, exp);
                          setState(() {
                            champ1.text = " ";
                            puiss(expo);
                          });
                        },
                        number: "10^x",
                        height: hauteur1,
                        width: largeur),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Sin(exp);
                          setState(() {
                            champ1.text = " ";
                            sinus(expo);
                          });
                        },
                        number: "Sin",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Cos(exp);
                          setState(() {
                            champ1.text = " ";
                            cosinus(expo);
                          });
                        },
                        number: "Cos",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Tan(exp);
                          setState(() {
                            champ1.text = " ";
                            tangente(expo);
                          });
                        },
                        number: "Tan",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Abs(exp);
                          setState(() {
                            champ1.text = " ";
                            absolue(expo);
                          });
                        },
                        number: "Abs",
                        height: hauteur1,
                        width: largeur),
                    Button(
                        onpress: () {
                          Parser p = Parser();
                          Expression exp = p.parse(champ1.text);
                          var expo = Sqrt(exp);
                          setState(() {
                            champ1.text = " ";
                            sqrt(expo);
                          });
                        },
                        number: "Sqrt",
                        height: hauteur1,
                        width: largeur),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onpress: () {
                          ajoute("7");
                        },
                        number: "7",
                        height: hauteur,
                        width: largeur),
                    Button(
                      onpress: () {
                        ajoute("8");
                      },
                      number: "8",
                      width: largeur,
                      height: hauteur,
                    ),
                    Button(
                        onpress: () {
                          ajoute("9");
                        },
                        number: "9",
                        height: hauteur,
                        width: largeur),
                    Button(
                        onpress: () {
                          setState(() {
                            delete();
                          });
                        },
                        number: "DEL",
                        height: hauteur,
                        width: largeur,
                        color: Colors.red),
                    Button(
                      onpress: () {
                        setState(() {
                          champ1.clear();
                          champ2 = "0";
                        });
                      },
                      number: "AC",
                      height: hauteur,
                      width: largeur,
                      color: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onpress: () {
                          ajoute("4");
                        },
                        number: "4",
                        height: hauteur,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute("5");
                        },
                        number: "5",
                        height: hauteur,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute("6");
                        },
                        number: "6",
                        height: hauteur,
                        width: largeur),
                    Button(
                      onpress: () {
                        ajoute("x");
                      },
                      number: "x",
                      width: largeur,
                      height: hauteur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                    Button(
                      onpress: () {
                        ajoute("/");
                      },
                      number: "/",
                      width: largeur,
                      height: hauteur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onpress: () {
                          ajoute("1");
                        },
                        number: "1",
                        height: hauteur,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute("2");
                        },
                        number: "2",
                        height: hauteur,
                        width: largeur),
                    Button(
                        onpress: () {
                          ajoute("3");
                        },
                        number: "3",
                        height: hauteur,
                        width: largeur),
                    Button(
                      onpress: () {
                        ajoute("+");
                      },
                      number: "+",
                      height: hauteur,
                      width: largeur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                    Button(
                      onpress: () {
                        ajoute("-");
                      },
                      number: "-",
                      width: largeur,
                      height: hauteur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onpress: () {
                          ajoute("0");
                        },
                        number: "0",
                        height: hauteur,
                        width: largeur),
                    Button(
                      onpress: () {
                        ajoute(".");
                      },
                      number: ".",
                      width: largeur,
                      height: hauteur,
                    ),
                    Button(
                      onpress: () {
                        Parser p = Parser();
                        Expression exp = p.parse(champ1.text);
                        var expo = Exponential(exp);
                        setState(() {
                          champ1.text = " ";
                          exponential(expo);
                        });
                      },
                      number: "Exp",
                      width: largeur,
                      height: hauteur,
                    ),
                    Button(
                      onpress: () {},
                      number: "Ans",
                      width: largeur,
                      height: hauteur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                    Button(
                      onpress: () {
                        setState(() {
                          equalPressed();
                        });
                      },
                      number: "=",
                      width: largeur,
                      height: hauteur,
                      color: Color.fromARGB(255, 126, 124, 124),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  ajoute(String number) {
    champ1.text = champ1.text + number;
    return champ1.text;
  }

  exponential(Exponential expo) {
    champ1.text = champ1.text + "$expo";
    return champ1.text;
  }

  sinus(Sin sin) {
    champ1.text = champ1.text + "$sin";
    return champ1.text;
  }

  cosinus(Cos cos) {
    champ1.text = champ1.text + "$cos";
    return champ1.text;
  }

  tangente(Tan tan) {
    champ1.text = champ1.text + "$tan";
    return champ1.text;
  }

  absolue(Abs abs) {
    champ1.text = champ1.text + "$abs";
    return champ1.text;
  }

  sqrt(Sqrt sqrt) {
    champ1.text = champ1.text + "$sqrt";
    return champ1.text;
  }

  puiss(Power x) {
    champ1.text = champ1.text + "$x";
    return champ1.text;
  }

  ln(Ln ln) {
    champ1.text = champ1.text + "$ln";
    return champ1.text;
  }

  loga(Log expo) {
    champ1.text = champ1.text + "$expo";
    return champ1.text;
  }

  mod(expo) {
    champ1.text = champ1.text + "$expo";
    return champ1.text;
  }

  delete() {
    setState(() {
      if (champ1.text != "") {
        champ1.text = champ1.text.substring(0, champ1.text.length - 1);
      } else {
        champ2 = "0";
      }
    });
  }

  equalPressed() {
    String finaluserinput = champ1.text;
    finaluserinput = champ1.text.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    champ2 = eval.toString();
    return champ2;
  }

  // Tan
  // Log
  //  Sqrt
  //  Abs
  // Ln
  // Sin
  // Cos
}
