import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_lying_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/squats.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class SideLyingLegLiftLeft extends StatelessWidget {
  const SideLyingLegLiftLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Leg();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Side-Lying Leg Lift Left x12',
        para1: sidelyinglegliftlefttext1,
        para2: '',
        pagecount: '3/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingLegLiftRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Squats();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Leg();
              },
            ),
          );
        },
      ),
    );
  }
}
