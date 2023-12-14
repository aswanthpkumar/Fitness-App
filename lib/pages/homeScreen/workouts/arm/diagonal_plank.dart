import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_curl_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/punches.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class DiagonalPlank extends StatelessWidget {
  const DiagonalPlank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Arm();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Diagonal Plank x10',
        para1: diagonalplankx10text1,
        para2: '',
        pagecount: '10/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Punches();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegBarbellCurlRight();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Arm();
              },
            ),
          );
        },
      ),
    );
  }
}
