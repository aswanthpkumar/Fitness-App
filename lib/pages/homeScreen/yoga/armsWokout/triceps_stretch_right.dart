import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/standing_biceps_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/triceps_stretch_left.dart';
import 'package:flutter/material.dart';

class TricepsStretchRight extends StatelessWidget {
  const TricepsStretchRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmsWorkout();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Triceps Stretch Right',
        para1: '',
        para2: '',
        pagecount: '6/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBicepsStretchLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const TricepsStretchLeft();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmsWorkout();
              },
            ),
          );
        },
      ),
    );
  }
}