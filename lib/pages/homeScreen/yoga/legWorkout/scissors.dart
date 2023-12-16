import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/frog_press.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_up_the_wall.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:flutter/material.dart';

class Scissors extends StatelessWidget {
  const Scissors({super.key});

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
        heading: 'Scissors',
        para1: '',
        para2: '',
        pagecount: '4/5',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LeguptheWall();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const FrogPress();
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