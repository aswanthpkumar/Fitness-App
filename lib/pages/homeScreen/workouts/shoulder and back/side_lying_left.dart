import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/arms_scissors.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/shoulderandback.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/side_lying_right.dart';
import 'package:flutter/material.dart';

class SideLyingFloorStretchRight extends StatelessWidget {
  const SideLyingFloorStretchRight({super.key});

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
        heading: 'Side-Lying-Floor Stretch Left 30s',
        para1: sidelyingfloorrighttext1,
        para2: '',
        pagecount: '4/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmsScissors();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingFloorStretchLeft();
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
