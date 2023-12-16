import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/cross_touch_and_reach.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/frog_press.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:flutter/material.dart';

class StandingHipCircle extends StatelessWidget {
  const StandingHipCircle({super.key});

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
        heading: 'Standing Hip Circle',
        para1: '',
        para2: '',
        pagecount: '2/5',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const FrogPress();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CrossTouchandReach();
              },
            ),
          );
        },
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