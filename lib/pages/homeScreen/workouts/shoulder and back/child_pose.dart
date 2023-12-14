import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/cat_cow_pose.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/shoulderandback.dart';
import 'package:flutter/material.dart';

class ChildPose extends StatelessWidget {
  const ChildPose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ShoulderandBack();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Child Pose 30s',
        para1: childposetext1,
        para2: '',
        pagecount: '8/8',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CatCowPose();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ShoulderandBack();
              },
            ),
          );
        },
      ),
    );
  }
}
