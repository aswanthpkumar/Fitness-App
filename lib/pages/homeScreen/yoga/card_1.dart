import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final Color colors;
  final String name;
  final VoidCallback ontap;
  const Card1({super.key, required this.colors, required this.name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Card(
            color: colors,
            margin: const EdgeInsets.all(8),
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: SizedBox(
              width: 200,
              height: 125,
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
