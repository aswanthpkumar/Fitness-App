import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russianTwist.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Abdominal_Crunches extends StatelessWidget {
  const Abdominal_Crunches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Abdominal Crunches x16',
        para1: abdominalCrunchestext1,
        para2: abdominalCrunchestext2,
        pagecount: '2/16',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Russian_Twist_x_20();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Jumping_Jacks();
              },
            ),
          );
        },
      ),
    );
  }
}
