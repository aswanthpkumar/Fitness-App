import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/crab_walk.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/plank_taps.dart';
import 'package:flutter/material.dart';

class PlankandReach extends StatelessWidget {
  const PlankandReach({super.key});

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
        heading: 'Plank and Reach',
        para1: '',
        para2: '',
        pagecount: '3/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CrabWalk();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const PlankTaps();
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