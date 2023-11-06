import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Heel_Touch_x_20 extends StatelessWidget {
  const Heel_Touch_x_20({super.key});

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
                  return const Leg_Raises_x_16();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Mountain_Climber_x_16();
                },
              ),
            );
          }),
    );
  }
}
