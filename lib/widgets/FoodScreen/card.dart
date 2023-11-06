import 'package:demo_project/assets.dart';
import 'package:flutter/material.dart';

class Food_Category extends StatelessWidget {
  final VoidCallback onTap;
  final meals;
  final img;
  final color;
  const Food_Category(
      {super.key,
      required this.meals,
      required this.img,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 200,
            height: 240,
            decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                image: AssetImage(img),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(meals),
        ),
      ],
    );
  }
}
