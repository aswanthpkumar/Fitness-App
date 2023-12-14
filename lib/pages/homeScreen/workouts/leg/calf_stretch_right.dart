import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/calf_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class CalfStretchRight extends StatelessWidget {
  const CalfStretchRight({super.key});

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
        heading: 'Calf Stretch Right 30s',
        para1: calfstretchrighttext1,
        para2: '',
        pagecount: '11/11',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CalfStretchLeft();
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
