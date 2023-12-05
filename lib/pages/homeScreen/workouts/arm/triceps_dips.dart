import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_clockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/side_arm_raise.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class TricepsDips extends StatelessWidget {
  const TricepsDips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Triceps Dips x10',
        para1: tricepsdipstext1,
        para2: tricepsdipstext2,
        pagecount: '3/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmCriclesClockwise();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideArmRaiseArm();
              },
            ),
          );
        },
      ),
    );
  }
}
