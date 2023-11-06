import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/spinlumbarright.dart';
import 'package:flutter/material.dart';

class Spine_Lumbar_Left extends StatelessWidget {
  const Spine_Lumbar_Left({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Spine Lumbar Twist Stretch Left 30s',
        para1: spinlumbarlefttext1,
        para2: spinlumbarlefttext2,
        pagecount: "15/16",
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Spine_Lumbar_Right();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Cobra_Stretch_30s();
              },
            ),
          );
        },
      ),
    );
  }
}
