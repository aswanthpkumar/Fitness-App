import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final VoidCallback ontap;
  final img;
  final text;
  const Section(
      {super.key, required this.img, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Card(
            margin: const EdgeInsets.all(8),
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue, width: 3),
            ),
            color: Colors.lightGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    alignment: Alignment.centerLeft,
                    height: 100,
                    width: 100,
                    image: AssetImage(img),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
