import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/rhomboid_pulls.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/shoulderandback.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/side_lying_left.dart';
import 'package:flutter/material.dart';

class ArmsScissors extends StatelessWidget {
  const ArmsScissors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ShoulderandBack();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Arms Scissors 30s',
        para1: armscissorstext1,
        para2: '',
        pagecount: '5/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const RhomboidPulls();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingFloorStretchRight();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ShoulderandBack();
              },
            ),
          );
        },
      ),
    );
  }
}
