

import 'package:flutter/material.dart';

class Saparater extends StatelessWidget {
  final double size;
  final String text;
  const Saparater({super.key, required this.text, required this.size,});

  @override
  Widget build(context) {
    return  SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style:  TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}