import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russianTwist.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class AbdominalCrunches extends StatelessWidget {
  const AbdominalCrunches ({super.key});

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
                return const RussianTwistx20();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const JumpingJacks();
              },
            ),
          );
        },
      ),
    );
  }
}
