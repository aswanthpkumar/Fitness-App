import 'package:flutter/material.dart';

class CardSection2 extends StatelessWidget {
  const CardSection2({super.key, required this.image});
  // ignore: prefer_typing_uninitialized_variables
  final image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
      child: Stack(
        children: [
          Container(
            height: 120,
            width: 210,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
