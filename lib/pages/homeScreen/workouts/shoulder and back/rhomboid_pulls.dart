import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/arms_scissors.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/cat_cow_pose.dart';
import 'package:demo_project/pages/homeScreen/workouts/shoulder%20and%20back/shoulderandback.dart';
import 'package:flutter/material.dart';

class RhomboidPulls extends StatelessWidget {
  const RhomboidPulls({super.key});

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
        heading: 'Rhomoboid Pulls x12',
        para1: rhomboidpullstext1,
        para2: '',
        pagecount: '6/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CatCowPose();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmsScissors();
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
