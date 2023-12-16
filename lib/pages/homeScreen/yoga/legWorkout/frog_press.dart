import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/scissors.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/standing_hip_circle.dart';
import 'package:flutter/material.dart';

class FrogPress extends StatelessWidget {
  const FrogPress({super.key});

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
        heading: 'Frog Press',
        para1: '',
        para2: '',
        pagecount: '3/5',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Scissors();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingHipCircle();
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