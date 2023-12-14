import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/wall_calf_raises.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class LeftQuadStretchwithWall extends StatelessWidget {
  const LeftQuadStretchwithWall({super.key});

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
        heading: 'Left Quad Stretch with Wall 30s',
        para1: leftquadstretchwithwalltext1,
        para2: '',
        pagecount: '8/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WallCalfRaises();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DonkeyKicksRight();
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
