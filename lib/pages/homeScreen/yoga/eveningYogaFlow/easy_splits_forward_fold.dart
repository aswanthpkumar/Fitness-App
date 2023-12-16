import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/easy_butterfly_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_right.dart';
import 'package:flutter/material.dart';

class EasySplitsForwardFold extends StatelessWidget {
  const EasySplitsForwardFold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EveningYogaFlow();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Easy Splits Forward Fold',
        para1: '',
        para2: '',
        pagecount: '6/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EasyButterflyPose();
              },
            ),
          );
        },
        ontapPrevious: () { Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSideBendRight();
              },
            ),
          );},
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EveningYogaFlow();
              },
            ),
          );
        },
      ),
    );
  }
}