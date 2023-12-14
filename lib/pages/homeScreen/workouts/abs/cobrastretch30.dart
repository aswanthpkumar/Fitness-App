import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/spinlumbarleft.dart';
import 'package:flutter/material.dart';

class CobraStretch30s extends StatelessWidget {
  const CobraStretch30s({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Abs();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Cobra Stretch 30s',
        para1: cobrastretch30text1,
        para2: '',
        pagecount: '14/16',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SpineLumbarLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Plank30();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Abs();
              },
            ),
          );
        },
      ),
    );
  }
}
