import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/calf_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/left_quad_stretch_wall.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class WallCalfRaises extends StatelessWidget {
  const WallCalfRaises({super.key});

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
        heading: 'Wall Calf Raises x12',
        para1: wallcalfraisestext1,
        para2: '',
        pagecount: '9/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CalfStretchLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LeftQuadStretchwithWall();
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
