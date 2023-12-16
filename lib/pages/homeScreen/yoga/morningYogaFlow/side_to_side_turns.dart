import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/sphinx_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/upanddown_nods.dart';
import 'package:flutter/material.dart';

class SidetoSideTurns extends StatelessWidget {
  const SidetoSideTurns({super.key});

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
          heading: 'Side to Side Turns',
          para1: '',
          para2: '',
          pagecount: '4/9',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SphinxPose();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const UpDownNods();
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