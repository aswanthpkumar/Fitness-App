import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/shoulderandback.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/side_arm_raise.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/side_lying_left.dart';
import 'package:flutter/material.dart';

class SideLyingFloorStretchLeft extends StatelessWidget {
  const SideLyingFloorStretchLeft({super.key});

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
        para1: sidelyingfloorlefttext1,
        para2: '3/8',
        pagecount: '',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingFloorStretchRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideArmRaise();
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
