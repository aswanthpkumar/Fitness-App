import 'package:flutter/material.dart';

class CardSection1 extends StatelessWidget {
  final img;
  final name;
  final VoidCallback onTap;
  const CardSection1({
    super.key,
    required this.onTap,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 2),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 190,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child:  Padding(
                padding: const EdgeInsets.only(right: 50, top: 150, left: 10),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    wordSpacing: 1,
                    fontSize: 32,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
