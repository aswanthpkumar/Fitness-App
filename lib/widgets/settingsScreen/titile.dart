import 'package:flutter/material.dart';

class HeaderLine extends StatelessWidget {
  const HeaderLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
          padding: EdgeInsets.only(top: 25),
          child: Center(
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 40),
            ),
          ),
        );
  }
}