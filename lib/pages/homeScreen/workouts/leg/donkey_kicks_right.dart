import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/left_quad_stretch_wall.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class DonkeyKicksRight extends StatelessWidget {
  const DonkeyKicksRight({super.key});

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
        heading: 'Donkey Kicks Right x16',
        para1: donkeykicksrighttext1,
        para2: '',
        pagecount: '7/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LeftQuadStretchwithWall();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DonkeyKicksLeft();
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
