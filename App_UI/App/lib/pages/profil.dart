import 'package:flutter/material.dart';

import 'package:mon_app/pages/detail_article.dart';
import 'package:mon_app/pages/ticket_view.dart';

class Profils extends StatefulWidget {
  const Profils({super.key});

  @override
  State<Profils> createState() => _ProfilsState();
}

class _ProfilsState extends State<Profils> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 280,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFf3f3f5)),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Search")
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 15),
                //padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFf3f3f5)),
                child: const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "TRENDING PRODUCTS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Expanded(
                child: Divider(
                  indent: 15,
                  endIndent: 15,
                ),
              ),
              InkWell(
                onTap: (() {}),
                child: const Text(
                  " See All",
                  style: TextStyle(color: Color.fromARGB(255, 4, 57, 101)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              InkWell(
                child: const TicktView(
                  image: "images/chaise3.png",
                  title: "chaise scandinave",
                  subtitle: "\$800",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/chaise3.png",
                            title: "chaise scandinave",
                            price: "\$800",
                            description: "la chaise scandinave a moindre cout",
                            review: "dvzrnbf bbrfj",
                            offers: "vdvnrjhrjnfbfnsvvv",
                            policy: "vfbgb bjsvs ,b",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/chaise1.png",
                  title: "chaise 1 scandinave",
                  subtitle: "\$900",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/chaise1.png",
                            title: "chaise 1 scandinave",
                            price: "\$900",
                            description: "la chaise scandinave a moindre cout",
                            review: "cette chaise est bien jolie",
                            offers: "cette chaise est populaire",
                            policy: "chic",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/chaise2.png",
                  title: "chaise 2 scandinave",
                  subtitle: "\$10000",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/chaise2.png",
                            title: "chaise 2 scandinave",
                            price: "\$1000",
                            description:
                                "la chaise scandinave a moindre cout disponible",
                            review: "cette chaise est bien souble",
                            offers: "cette chaise est appaisante",
                            policy: "choc",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/chaise.png",
                  title: "chaise 3 scandinave",
                  subtitle: "\$1100",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/chaise.png",
                            title: "chaise 3 scandinave",
                            price: "\$1100",
                            description:
                                "la chaise scandinave a moindre cout partout",
                            review: "cette chaise est la meilleur",
                            offers: "cette chaise est la plus populaire",
                            policy: "chic choc",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "POPULAR CATEGORIES",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Expanded(
                child: Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Color.fromARGB(255, 134, 159, 180),
                ),
              ),
              InkWell(
                onTap: (() {}),
                child: const Text(
                  " See All",
                  style: TextStyle(color: Color.fromARGB(255, 4, 57, 101)),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 34,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 4, 57, 101)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {}),
                    child: const Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  //width: 200,
                  height: 34,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFf3f3f5),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {}),
                    child: const Text(
                      "ELECTRONICS AND APPLINES",
                      style: TextStyle(
                          color: Color(0xF90C020C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 34,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFf3f3f5),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {}),
                    child: const Text(
                      "SHIRT",
                      style: TextStyle(
                          color: Color(0xF90C020C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 34,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFf3f3f5),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {}),
                    child: const Text(
                      "Men",
                      style: TextStyle(
                          color: Color(0xF90C020C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 34,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xFFf3f3f5),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {}),
                    child: const Text(
                      "Women",
                      style: TextStyle(
                          color: Color(0xF90C020C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              InkWell(
                child: const TicktView(
                  image: "images/camera.png",
                  title: "Camera_180px",
                  subtitle: "\$800",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/camera.png",
                            title: "camera 180px",
                            price: "\$800",
                            description: "la camara a moindre cout",
                            review: "cette camera est bien jolie",
                            offers: "cette camera est populaire",
                            policy: "chic",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/iphone_13.png",
                  title: "Iphone 13",
                  subtitle: "\$1000",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/iphone_13.png",
                            title: "Iphone 13",
                            price: "\$1000",
                            description: "l'iphone 13 à moindre cout",
                            review: "ce Iphone est bien joli",
                            offers: "ce iphone 13 populaire",
                            policy: "choc",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/ecouteur.png",
                  title: "Ecouteur_Haute_Game",
                  subtitle: "\$700",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/ecouteur.png",
                            title: "Ecouteur bluetooth",
                            price: "\$700",
                            description: "l'ecouteur bluetooth a moindre cout",
                            review: "cet ecouteur est bien joli",
                            offers: "cet ecouteur est populaire",
                            policy: "chic choc",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
              InkWell(
                child: const TicktView(
                  image: "images/montre.png",
                  title: "Montre intelligente",
                  subtitle: "\$2000",
                ),
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => DetailArticle(
                            image: "images/montre.png",
                            title: "Montre intelligente",
                            price: "\$2000",
                            description:
                                "les appareils menagers a moindre cout",
                            review: "ces appreils sont bien jolie",
                            offers: "ces appareils sont populaire",
                            policy: "choc",
                          ));
                  Navigator.of(context).push(route);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
