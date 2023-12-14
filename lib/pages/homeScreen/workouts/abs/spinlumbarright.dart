import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/spinlumbarleft.dart';
import 'package:flutter/material.dart';

class SpineLumbarRight extends StatelessWidget {
  const SpineLumbarRight({super.key});

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
        heading: "Spine Lumbar Twist Stretch Right 30s",
        para1: spinlumbarrighttext1,
        para2: spinlumbarrighttext2,
        pagecount: "16/16",
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SpineLumbarLeft();
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
