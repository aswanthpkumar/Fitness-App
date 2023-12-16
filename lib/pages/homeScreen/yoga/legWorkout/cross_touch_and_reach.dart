import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/standing_hip_circle.dart';

class CrossTouchandReach extends StatelessWidget {
  const CrossTouchandReach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegWorkout();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Cross Touch and Reach',
        para1: '',
        para2: '',
        pagecount: '1/5',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingHipCircle();
              },
            ),
          );
        },
        ontapPrevious: () {},
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegWorkout();
              },
            ),
          );
        },
      ),
    );
  }
}
