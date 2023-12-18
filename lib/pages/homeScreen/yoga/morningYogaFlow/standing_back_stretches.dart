import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/standing_backbend.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/straight_arm_plank.dart';
import 'package:flutter/material.dart';

class StandingBackStretches extends StatelessWidget {
  const StandingBackStretches({super.key});

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
          heading: 'Standing Back Stretches',
          para1: standingbackstretchestext1,
          para2: '',
          pagecount: '8/9',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const StandingBackBend();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const StraightarmPlank();
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