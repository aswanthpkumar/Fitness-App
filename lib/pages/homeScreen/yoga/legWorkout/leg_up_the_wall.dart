import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/scissors.dart';
import 'package:flutter/material.dart';

class LeguptheWall extends StatelessWidget {
  const LeguptheWall({super.key});

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
        heading: 'Leg Up the Wall',
        para1: legupwalltext1,
        para2: '',
        pagecount: '5/5',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Scissors();
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
