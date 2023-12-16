import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/standing_biceps_stretch_left.dart';
import 'package:flutter/material.dart';

class StandingBicepsStretchRight extends StatelessWidget {
  const StandingBicepsStretchRight({super.key});

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
        heading: 'Standing Biceps Stretch Right',
        para1: '',
        para2: '',
        pagecount: '8/8',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBicepsStretchLeft();
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
