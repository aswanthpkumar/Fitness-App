import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class HeelTouchx20 extends StatelessWidget {
  const HeelTouchx20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          coverimage: powerjumps,
          heading: 'Heel Touch x20',
          para1: heeltouchx20text1,
          para2: heeltouchx20text2,
          pagecount: '5/16',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const LegRaisesx16();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MountainClimberx16();
                },
              ),
            );
          }),
    );
  }
}
