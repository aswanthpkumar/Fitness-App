import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/plank_taps.dart';
import 'package:flutter/material.dart';

class ElbowBack extends StatelessWidget {
  const ElbowBack({super.key});

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
        heading: 'Elbow Back',
        para1: elbowsbacktext1,
        para2: '',
        pagecount: '1/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const PlankTaps();
              },
            ),
          );
        },
        ontapPrevious: () {},
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
