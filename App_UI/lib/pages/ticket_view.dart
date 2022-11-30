import 'package:flutter/material.dart';

class TicktView extends StatelessWidget {
  const TicktView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3),
        margin: const EdgeInsets.only(right: 10, top: 5),
        width: MediaQuery.of(context).size.width * 0.45,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.4, color: Colors.grey),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            height: 140,
            width: 165,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFf5f5f5),
                border: Border.all(width: 0.1, color: Colors.grey),
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(image))),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 20,
            child: Center(
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(width: 45),
              Container(
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: const Color(0xFFF4F6FD)),
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 15,
                  color: Color.fromARGB(255, 4, 57, 101),
                ),
              ),
            ],
          ),
        ]));
  }
}
