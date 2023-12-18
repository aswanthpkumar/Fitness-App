import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/standing_biceps_stretch_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/triceps_stretch_right.dart';
import 'package:flutter/material.dart';

class StandingBicepsStretchLeft extends StatelessWidget {
  const StandingBicepsStretchLeft({super.key});

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
        heading: 'Standing Biceps Stretch Left',
        para1: standingbicepsstretchlefttext1,
        para2: '',
        pagecount: '7/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBicepsStretchRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const TricepsStretchRight();
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