import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/backward_lunge.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_lying_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class SideLyingLegLiftRight extends StatelessWidget {
  const SideLyingLegLiftRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Side-Lying Leg Lift Right x12',
        para1: sidelyinglegliftrighttext1,
        para2: '',
        pagecount: '4/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BACKWARDlUNGE();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingLegLiftLeft();
              },
            ),
          );
        },
      ),
    );
  }
}
