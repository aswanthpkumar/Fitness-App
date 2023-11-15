import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russianTwist.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class MountainClimberx16 extends StatelessWidget {
  const MountainClimberx16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          coverimage: powerjumps,
          heading: 'Mountainer Climber x16',
          para1: mountainclimbertext1,
          para2: mountainclimbertext2,
          pagecount: '4/16',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const HeelTouchx20();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const RussianTwistx20();
                },
              ),
            );
          }),
    );
  }
}
