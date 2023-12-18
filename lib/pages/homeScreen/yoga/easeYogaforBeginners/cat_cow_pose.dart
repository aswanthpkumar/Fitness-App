import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/child_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/ease_yoga_for_beignners.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_side_bend_right.dart';
import 'package:flutter/material.dart';

class CatCowPose extends StatelessWidget {
  const CatCowPose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EaseYogaforBeginners();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Cat Cow Pose',
        para1: catcowposttext1,
        para2: '',
        pagecount: '9/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ChildPose();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSideBendRight();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EaseYogaforBeginners();
              },
            ),
          );
        },
      ),
    );
  }
}
