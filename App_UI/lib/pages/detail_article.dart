import 'package:flutter/material.dart';
import 'package:mon_app/pages/favorite.dart';

class DetailArticle extends StatelessWidget {
  DetailArticle({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.review,
    required this.offers,
    required this.policy,
  });
  final String image;
  final String title;
  final String price;
  final String description;
  final String review;
  final String offers;
  final String policy;

  GlobalKey button1 = GlobalKey();

  GlobalKey button2 = GlobalKey();

  GlobalKey button3 = GlobalKey();

  GlobalKey button4 = GlobalKey();

  String text = " detail du produit";

  String text1 = " detail du produit";

  String text2 = " detail du produit 2";

  String text3 = " detail du produit 3";

  String text4 = " detail du produit 4";

  bool b = true;

  bool c = false;

  void move(int a) {
    GlobalKey gl;
    switch (a) {
      case 1:
        {
          gl = button1;
          text = text1;
          b = true;
          c = false;
        }
        break;
      case 2:
        {
          gl = button2;
          text = text2;
          b = false;
          c = true;
        }
        break;
      case 3:
        {
          gl = button3;
          text = text3;
          b = false;
          c = false;
        }
        break;
      case 4:
        {
          gl = button4;
          text = text4;
          b = true;
          c = true;
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Favorite(),
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: hauteur * 0.4,
                  width: largeur,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors
                          .white, //const Color.fromARGB(255, 211, 207, 207),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(image))),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: largeur,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: largeur / 8,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star_border,
                          color: Color.fromARGB(255, 4, 57, 101),
                        ),
                        Text('4.5',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: largeur / 6,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 4, 57, 101),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
              unselectedLabelColor: Colors.black,
              indicatorColor: Color.fromARGB(255, 4, 57, 101),
              isScrollable: true,
              labelColor: Color.fromARGB(255, 4, 57, 101),
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              tabs: [
                Tab(
                    child: Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text("Descriptions"),
                )),
                Tab(child: Text("Reviews")),
                Tab(child: Text("offers")),
                Tab(child: Text("Policy")),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 10, top: 10),
                      child: Text(description
                          //"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                          )),
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 10, top: 10),
                      child: Text(review
                          //"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                          )),
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 10, top: 10),
                      child: Text(offers
                          // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                          )),
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 10, top: 10),
                      child: Text(policy
                          //"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                          )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 95,
                  height: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(255, 4, 57, 101)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ))),
                      onPressed: (() {}),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.add_circle_outline_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.add_circle_outline_outlined,
                              color: Colors.white, size: 15),
                        ],
                      )),
                ),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(255, 4, 57, 101)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ))),
                      onPressed: (() {}),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "ADD TO CARD",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.shopping_cart_outlined,
                              color: Colors.white)
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
