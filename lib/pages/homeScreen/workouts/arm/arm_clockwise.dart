import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_counterclockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class ArmCriclesClockwise extends StatelessWidget {
  const ArmCriclesClockwise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Arm Cricles Clockwise 30s',
        para1: armcircelsclockwisetext1,
        para2: '',
        pagecount: '4/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmCriclesCounterclockwise();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const TricepsDips();
              },
            ),
          );
        },
      ),
    );
  }
}
