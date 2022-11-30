import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mon_app/connexion.dart';
import 'package:flutter/services.dart';
import 'package:mon_app/pages/inscription.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "product",
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(206, 5, 60, 116),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(4),
              height: 40.5,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "images/logo3.jpg",
                    ),
                  )),
            ),
            const Text(
              "Zip MARKET",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.grey.shade300,
      nextScreen: ArrowPageIndicatorDemo(
        key: key,
      ),
    );
  }
}

class ArrowPageIndicatorDemo extends StatefulWidget {
  const ArrowPageIndicatorDemo({super.key});

  @override
  ArrowPageIndicatorDemoState createState() {
    return ArrowPageIndicatorDemoState();
  }
}

class ArrowPageIndicatorDemoState extends State<ArrowPageIndicatorDemo> {
  final _pageController2 = PageController();

  final _currentPageNotifier2 = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: _buildBody(),
    );
  }

  _buildCircleIndicator() {
    return CirclePageIndicator(
      size: 10.0,
      dotColor: Colors.black,
      selectedSize: 13.0,
      itemCount: pages.length,
      currentPageNotifier: _currentPageNotifier2,
    );
  }

  _buildBody() => ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          SizedBox(
            height: 500,
            child: PageView.builder(
                itemCount: pages.length,
                controller: _pageController2,
                itemBuilder: (BuildContext context, int index) =>
                    Pagewidget(entry: pages[index]),
                onPageChanged: (int index) {
                  if (index <= 4) {
                    _currentPageNotifier2.value = index;
                  } else {
                    var index = MaterialPageRoute(
                        builder: (BuildContext context) => const MyHomePage());
                    Navigator.of(context).push(index);
                  }
                }),
          ),
          ArrowPageIndicator(
            iconPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            isInside: false,
            iconSize: 60,
            leftIcon: Image.asset(
              "images/gauche1.png",
              // width: 60.0,
              // height: 60.0,
            ),
            rightIcon: Image.asset(
              "images/droite.png",
              // width: 86.0,
              // height: 86.0,
            ),
            pageController: _pageController2,
            currentPageNotifier: _currentPageNotifier2,
            itemCount: pages.length,
            child: Center(
                child: SmoothPageIndicator(
              controller: _pageController2,
              count: pages.length,
              axisDirection: Axis.horizontal,
              effect: const SlideEffect(
                  spacing: 10.0,
                  //radius: 4.0,
                  dotWidth: 10.0,
                  dotHeight: 2.5,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.black),
            ) //_buildCircleIndicator(),
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 4, 57, 101)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MyHomePage());
                      Navigator.of(context).push(route);
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 4, 57, 101)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ))),
                    onPressed: (() {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) => const Home());
                      Navigator.of(context).push(route);
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Create Account",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ]
            .map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: item,
                ))
            .toList(),
      );
}

class Pageinfo {
  final String image;
  final String description;
  const Pageinfo(this.image, this.description);
}

final List<Pageinfo> pages = [
  const Pageinfo("images/shopping.jpg",
      "Cette application est une application de shopping depuis votre Téléphone ou votre ordinateur"),
  const Pageinfo("images/phone.webp",
      "Depuis votre Smartphone, vous avez la possibilité de faire vos achats partout et à tout moment"),
  const Pageinfo("images/e-commerce.jpg",
      "Commandez vos articles hors-ligne depuis votre ordinateur"),
  const Pageinfo(
      "images/clic.jpg", "En un clic, votre article est commandé sans effort"),
  const Pageinfo("images/paiement.webp",
      "Le paiement est sûr et sécurisé avec système de paiement multi-plateforme"),

  // Navigator.of(context).push( MaterialPageRoute(
  //     builder: (BuildContext context) => const MyHomePage()););
];

class Pagewidget extends StatefulWidget {
  final Pageinfo entry;
  const Pagewidget({super.key, required this.entry});

  @override
  State<Pagewidget> createState() => _PagewidgetState();
}

class _PagewidgetState extends State<Pagewidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.entry.image,
                  ),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              widget.entry.description,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
