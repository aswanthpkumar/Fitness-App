import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russianTwist.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Mountain_Climber_x_16 extends StatelessWidget {
  const Mountain_Climber_x_16({super.key});

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
                  return const Heel_Touch_x_20();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Russian_Twist_x_20();
                },
              ),
            );
          }),
    );
  }
}
