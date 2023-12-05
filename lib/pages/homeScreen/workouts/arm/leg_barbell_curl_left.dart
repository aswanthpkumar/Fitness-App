import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diagonal_plank.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class LegBarbellCurlRight extends StatelessWidget {
  const LegBarbellCurlRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Leg Barbell Curl Right x8',
        para1: legbarellcurrighttext1,
        para2: '',
        pagecount: '9/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DiagonalPlank();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegBarbellCurlLeft();
              },
            ),
          );
        },
      ),
    );
  }
}
