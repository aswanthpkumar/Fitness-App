import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/spinlumbarleft.dart';
import 'package:flutter/material.dart';

class Spine_Lumbar_Right extends StatelessWidget {
  const Spine_Lumbar_Right({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
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
                return const Spine_Lumbar_Left();
              },
            ),
          );
        },
      ),
    );
  }
}
