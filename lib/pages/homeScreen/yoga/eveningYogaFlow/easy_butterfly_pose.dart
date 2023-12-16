import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/bridge.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/easy_splits_forward_fold.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:flutter/material.dart';

class EasyButterflyPose extends StatelessWidget {
  const EasyButterflyPose({super.key});

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
        heading: 'Easy Butterfly Pose',
        para1: '',
        para2: '',
        pagecount: '7/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Bridge();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EasySplitsForwardFold();
              },
            ),
          );
        },
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
