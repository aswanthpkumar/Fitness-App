import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/spinlumbarright.dart';
import 'package:flutter/material.dart';

class SpineLumbarLeft extends StatelessWidget {
  const SpineLumbarLeft({super.key});

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
        heading: 'Spine Lumbar Twist Stretch Left 30s',
        para1: spinlumbarlefttext1,
        para2: spinlumbarlefttext2,
        pagecount: "15/16",
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SpineLumbarRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CobraStretch30s();
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
