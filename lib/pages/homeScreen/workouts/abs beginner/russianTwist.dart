import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/Abdominal_Crunchesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Russian_Twist_x_20 extends StatelessWidget {
  const Russian_Twist_x_20({super.key});

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
                  return const Mountain_Climber_x_16();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Abdominal_Crunches();
                },
              ),
            );
          }),
    );
  }
}
