import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diagonal_plank.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Punches extends StatelessWidget {
  const Punches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Punches',
        para1: punchestext1,
        para2: '',
        pagecount: '11/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Pushups();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DiagonalPlank();
              },
            ),
          );
        },
      ),
    );
  }
}
