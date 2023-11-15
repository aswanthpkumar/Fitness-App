import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/Abdominal_Crunchesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class RussianTwistx20 extends StatelessWidget {
  const RussianTwistx20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          coverimage: powerjumps,
          heading: 'Russian Twist x20',
          para1: russintwistx20text1,
          para2: russintwistx20text2,
          pagecount: '3/16',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MountainClimberx16();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const AbdominalCrunches();
                },
              ),
            );
          }),
    );
  }
}
