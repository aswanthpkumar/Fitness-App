import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/sphinx_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/straight_arm_plank.dart';
import 'package:flutter/material.dart';

class ProneTricepsPushups extends StatelessWidget {
  const ProneTricepsPushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MorningYogaFlow();
                },
              ),
            );
          },
          coverimage: powerjumps,
          heading: 'Prone Triceps Push-Ups',
          para1: '',
          para2: '',
          pagecount: '6/9',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const StraightarmPlank();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SphinxPose();
                },
              ),
            );
          },
          ontapClose: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MorningYogaFlow();
                },
              ),
            );
          },
        ),
    );
  }
}